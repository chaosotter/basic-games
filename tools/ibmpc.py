# Platform-specific functions for the IBM PC.

import os
import subprocess

DOSBOX_PATH = '/cygdrive/f/DOS/SRC'
QB64_PATH = '/home/meiss_000/qb64'

def Prepare(game, dest):
    """Prepares this IBM PC game for upload."""
    for name in ('classic.bas',
                 'classic.qb64.bas',
                 'modern.bas',
                 'modern.qb64.bas',
                 'README.txt'):
        if name in game._files:
            subprocess.run(['cp',
                            os.path.join(game._path, name),
                            os.path.join(dest, name)])

    for (name, target) in (('classic.bas', 'classic.qb64.bas'),
                           ('modern.bas', 'modern.qb64.bas')):
        if target not in game._files:
            subprocess.run(['cp',
                            os.path.join(game._path, name),
                            os.path.join(dest, target)])

    for name in ('games.nfo',
                 'menu.bas',
                 'menu.exe',
                 'MANIFEST'):
        subprocess.run(['cp',
                        os.path.join('..', 'boilerplate', name),
                        os.path.join(dest, name)])

    subprocess.run(['mkdir', DOSBOX_PATH])
    for name in ('classic.bas',
                 'modern.bas'):
        subprocess.run(['cp',
                        os.path.join(game._path, name),
                        os.path.join(DOSBOX_PATH, name)])
    for name in ('menu.bas', 'menu.exe'):
        subprocess.run(['cp',
                        os.path.join('..', 'boilerplate', name),
                        os.path.join(DOSBOX_PATH, name)])


def Finalize(game, dest):
    """Finalizes this IBM PC game for upload."""
    for name in ('classic.bas',
                 'classic.qb64.bas',
                 'modern.bas',
                 'modern.qb64.bas',
                 'MANIFEST',
                 'games.nfo',
                 'README.txt',
                 'metadata.txt'):
        subprocess.run(['chmod',
                        '644',
                        os.path.join(dest, name)])

    for (before, after) in (
            ('CLASSIC.EXE', 'classic.exe'),
            ('MODERN.EXE', 'modern.exe')):
        subprocess.run(['cp',
                        os.path.join(DOSBOX_PATH, before),
                        os.path.join(dest, after)])

    for name in ('classic.qb64.exe',
                 'modern.qb64.exe'):
        subprocess.run(['cp',
                        os.path.join(QB64_PATH, name),
                        os.path.join(dest, name)])

    for name in ('classic.exe',
                 'classic.qb64.exe',
                 'modern.exe',
                 'modern.qb64.exe',
                 'menu.exe'):
        subprocess.run(['chmod',
                        '755',
                        os.path.join(dest, name)])

    os.chdir(dest)
    subprocess.run(['zip', 'game.zip',
                    'menu.bas', 'menu.exe',
                    'classic.bas', 'classic.exe',
                    'modern.bas', 'modern.exe',
                    'MANIFEST', 'games.nfo',
                    'README.txt', 'metadata.txt'])
