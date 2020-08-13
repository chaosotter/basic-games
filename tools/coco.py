# Platform-specific functions for the Coco.

import os
import subprocess

IMGTOOL_PATH = '/usr/local/bin/imgtool'

def Prepare(game, dest):
    """Prepares this Coco game for upload."""
    for name in game._files:
        if name.endswith('.bas') or name == 'README.txt':
            subprocess.run(['cp',
                            os.path.join(game._path, name),
                            os.path.join(dest, name)])
            subprocess.run(['chmod', '644',
                            os.path.join(dest, name)])

    for (name, target) in (('games.nfo', 'games.nfo'),
                           ('MANIFEST.coco', 'MANIFEST')):
        subprocess.run(['cp',
                        os.path.join('..', 'boilerplate', name),
                        os.path.join(dest, target)])

    subprocess.run(['unzip',
                    os.path.join(game._path, 'coco.zip'),
                    'coco.dsk',
                    '-d', dest])
