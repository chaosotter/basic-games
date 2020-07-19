#!python

import json
import os
import subprocess
import sys

class Library(object):
    """The library all of games in the respository."""

    def __init__(self, base):
        """Builds the initial library.

        Search will begin from the directory specified by |base|.  A
        directory counts as holding a game if it contains a
        'config.json' file.
        """
        self._games = {}

        queue = [base]
        while queue:
            dir = queue.pop()
            for entry in os.scandir(dir):
                if not entry.is_dir():
                    continue
                try:
                    config_path = os.path.join(entry.path, 'config.json')
                    dummy = os.stat(config_path)
                    with open(config_path, 'r') as file:
                        data = file.read()
                        config = json.loads(data)
                    game = Game(entry.path, config)
                    self._games[game.ID()] = game
                except json.decoder.JSONDecodeError as e:
                    print('Malformed JSON in %s:' % (config_path,))
                    raise e
                except FileNotFoundError:
                    queue.append(entry.path)

        print('Found %d games in the repository.' % (len(self._games),))

    def Game(self, id):
        return self._games[id]

    def HasGame(self, id):
        return id in self._games

    def List(self):
        games = [x for x in self._games.keys()]
        return [self._games[x] for x in games]


class Game(object):
    """A single game in the library."""

    def __init__(self, path, config):
        self._path = path
        self._config = config
        self._files = set()
        for entry in os.scandir(path):
            self._files.add(entry.name)

    def ID(self):
        return self._config['ia']['id']

    def Path(self):
        return self._path

    def Publish(self):
        dest = os.path.join('..', 'publish', self.ID())
        boiler = os.path.join('..', 'boilerplate')
        subprocess.run(["mkdir", dest])
        for name in ('classic.bas', 'classic.qb64.bas',
                     'modern.bas', 'modern.qb64.bas',
                     'README.txt'):
            if name in self._files:
                subprocess.run(['cp', os.path.join(self._path, name), os.path.join(dest, name)])
        for (name, target) in (
                ('classic.bas', 'classic.qb64.bas'),
                ('modern.bas', 'modern.qb64.bas')):
            if target not in self._files:
                subprocess.run(['cp', os.path.join(self._path, name), os.path.join(dest, target)])
        for name in ('games.nfo', 'menu.bas', 'menu.exe', 'MANIFEST', 'zip.sh'):
            subprocess.run(['cp', os.path.join(boiler, name), os.path.join(dest, name)])

        def Attr(file, key, value):
            file.write("%-20s  %s\n" % (key, value))

        with open(os.path.join(dest, 'metadata.txt'), 'w') as file:
            Attr(file, 'emulator', 'dosbox')
            Attr(file, 'emulator_ext', 'zip')
            Attr(file, 'emulator_start', 'menu.exe')
            for x in self._config['authors']:
                Attr(file, 'creator', x)
            Attr(file, 'publisher', self._config['origin']['publisher'])
            for x in self._config['contributors']:
                Attr(file, 'contributor', x['name'])
            file.write('\nOriginally published in %s, %s\n' % (
                self._config['origin']['title'], self._config['origin']['date']))
            file.write('\n%s\n' % (self._config['origin']['url'],))
            file.close()

def main():
    lib = Library(os.path.join('..', 'games'))
    if sys.argv[1] == 'help':
        Help()
    elif sys.argv[1] == 'list':
        for game in lib.List():
            print('%-30s  %s' % (game.ID(), game.Path()))
    elif sys.argv[1] == 'publish':
        if not lib.HasGame(sys.argv[2]):
            print('Unknown game: %s' % (sys.argv[2],))
            sys.exit()
        game = lib.Game(sys.argv[2])
        game.Publish()

if __name__ == '__main__':
    main()
