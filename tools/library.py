import json
import os
import pickle

from game import Game

class Library(object):
    """Library represents the collection of all games in the repository."""

    def __init__(self, db=None, base=None):
        """Initializes the library.

        If |db| is not set, we rebuild the library by crawling the
        directory structure rooted at |base|.  If it is set, we
        restore from that files as an external database (just a
        pickled version of ourselves).

        The newly-built data structure is not written back out to the
        file.  To do that, use the Persist method.
        """
        if db is None:
            self._games = self._Crawl(base)
        else:
            self._games = pickle.load(open(db, "rb"))

        print('Found %d games in the repository.' % (len(self._games),))

    def _Crawl(self, base):
        """Crawls the directory given by |base| to find games.

        The return value is a dictionary from ID (field ia.id in the
        JSON config) to Game object.
        """
        games = {}

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
                    games[game.ID()] = game
                except json.decoder.JSONDecodeError as e:
                    print('Malformed JSON in %s:' % (config_path,))
                    raise e
                except FileNotFoundError:
                    queue.append(entry.path)
        return games

    def Persist(self, db):
        """Persists the library to the given external file."""
        pickle.dump(self._games, open(db, "wb"))

    def Game(self, id):
        """Returns the game with the given ID."""
        return self._games[id]

    def HasGame(self, id):
        """Checks whether there is a game with the given ID."""
        return id in self._games

    def List(self, pred=None):
        """Returns a list of all games matching the given predicate.

        If |pred| is None, we return all of the games.
        """
        if pred is None:
            pred = lambda x: True
        ids = [x for x in self._games.keys()]
        games = [self._games[x] for x in ids if pred(self._games[x])]

        games.sort(key=lambda x: x.Name())
        return games
