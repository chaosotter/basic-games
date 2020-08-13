import os
import subprocess

import coco
import ibmpc

class Game(object):
    """A single game in the library."""

    def __init__(self, path, config):
        """Initializes a new Game object.

        |path| is the path to the game's directory and |config| is the
         JSON config from that directory.
        """
        self._path = path
        self._config = config
        self._files = set()
        for entry in os.scandir(path):
            self._files.add(entry.name)

    def ID(self):
        """Returns the Internet Archive ID for the game."""
        return self._config['ia']['id']

    def Name(self):
        """Returns the name of the game ("name")."""
        return self._config['name']

    def ShortName(self):
        """Returns the short name of the game ("shortName")."""
        return self._config['shortName']

    def Path(self):
        """Returns the path to the game directory."""
        return self._path

    def Platform(self):
        """Returns the platform for this game.

        Many publishing and management options are platform-dependent.
        """
        return self._config['platform']['system']

    def Prepare(self):
        """Prepares this game for uploading.

        The exact mechanisms of this procedure vary from platform to
        platform, but they all involve extracting some collection of
        files to a subdirectory in ../publish named for the IA ID.
        """
        dest = os.path.join('..', 'publish', self.ID())
        print('Publishing game %s...' % (self.ID(),))

        subprocess.run(["mkdir", dest])
        if self.Platform() == 'IBM PC':
            ibmpc.Prepare(self, dest)
        elif self.Platform() == 'Coco':
            coco.Prepare(self, dest)

        def Attr(file, key, value):
            file.write("%-20s  %s\n" % (key, value))

        with open(os.path.join(dest, 'metadata.txt'), 'w') as file:
            for x in self._config['authors']:
                Attr(file, 'creator', x)
            Attr(file, 'publisher', self._config['origin']['publisher'])
            for x in self._config['contributors']:
                Attr(file, 'contributor', x['name'])
            if 'editors' in self._config:
                for x in self._config['editors']:
                    Attr(file, 'editor', x)
            file.write('\nOriginally published in %s, %s\n' % (
                self._config['origin']['title'], self._config['origin']['date']))
            file.write('\n%s\n' % (self._config['origin']['url'],))
            file.close()

    def Finalize(self):
        """Finalizes this game for uploading.

        The exact mechanisms of this procedure vary from platform to
        platform, and this is a no-op for platforms whose publication
        steps can be fully automated.
        """
        dest = os.path.join('..', 'publish', self.ID())
        print('Finalizing game %s...' % (self.ID(),))

        if self.Platform() == 'IBM PC':
            ibmpc.Finalize(self, dest)
