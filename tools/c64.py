# Platform-specific functions for the Commodore 64.

import os
import subprocess

IMGTOOL_PATH = '/usr/local/bin/imgtool'

def Prepare(game, dest):
    """Prepares this Commodore 64 game for upload."""
    for name in game._files:
        if name.endswith('.b64') or name.endswith('.prg') or name == 'README.txt':
            subprocess.run(['cp',
                            os.path.join(game._path, name),
                            os.path.join(dest, name)])
            subprocess.run(['chmod', '644',
                            os.path.join(dest, name)])

    for (name, target) in (('games.nfo', 'games.nfo'),
                           ('MANIFEST.c64', 'MANIFEST')):
        subprocess.run(['cp',
                        os.path.join('..', 'boilerplate', name),
                        os.path.join(dest, target)])
