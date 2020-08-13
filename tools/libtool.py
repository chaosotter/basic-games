#!python

import os
import sys

import library


def Help():
    print('Subcommands:')
    print()
    print('  help     -- This output.')
    print('  list     -- List all games, optionally restricted to a platform.')
    print('  prepare  -- Prepare a directory in ../publish with the IA name.')
    print('  finalize -- Copy executables into place prior to final upload.')
    print('  rebuild  -- Rebuild the game database.')


def main():
    try:
        lib = library.Library(db='games.db')
    except FileNotFoundError:
        lib = library.Library(base=os.path.join('..', 'games'))

    if sys.argv[1] == 'help':
        Help()

    elif sys.argv[1] == 'list':
        if len(sys.argv) > 2:
            pred = lambda x: x.Platform() == sys.argv[2]
        else:
            pred = lambda x: True
        for game in lib.List(pred=pred):
            print('%-30s  %-20s  %s' % (game.Name(), game.ID(), game.Path()))

    elif sys.argv[1] == 'prepare':
        game = lib.Game(sys.argv[2])
        game.Prepare()

    elif sys.argv[1] == 'finalize':
        game = lib.Game(sys.argv[2])
        game.Finalize()

    elif sys.argv[1] == 'rebuild':
        lib.Persist('games.db')


if __name__ == '__main__':
    main()
