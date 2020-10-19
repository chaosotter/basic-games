# Platform-specific functions for the TI-99/4A.

import os
import subprocess

def Prepare(game, dest):
    """Prepares this TI-99/4A game for upload."""
    for name in game._files:
        if (name.endswith('.bas') or
            name.endswith('.xb') or
            name.endswith('.tifiles')):
            subprocess.run(['cp',
                            os.path.join(game._path, name),
                            os.path.join(dest, name)])
            subprocess.run(['chmod', '644',
                            os.path.join(dest, name)])

    subprocess.run("cat \"%s\" \"%s\" > \"%s\"" % (
        os.path.join('..', 'boilerplate', 'ti99-dir.txt'),
        os.path.join(game._path, 'README.txt'),
        os.path.join(dest, 'README.txt')), shell=True)

    for (name, target) in (('games.nfo', 'games.nfo'),
                           ('MANIFEST.ti99', 'MANIFEST')):
        subprocess.run(['cp',
                        os.path.join('..', 'boilerplate', name),
                        os.path.join(dest, target)])

    if 'ti99.zip' in game._files:
        subprocess.run(['unzip',
                        os.path.join(game._path, 'ti99.zip'),
                        'ti99.dsk',
                        '-d', dest])
