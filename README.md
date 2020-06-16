# dunehd_cataloguer
This script aims to recursively alter the Dune Media Player cataloguing system (for older Dune Player versions) for ubuntu users. It is not a cataloguing system itself but does rely on a catalogue that has been previously setup. The cataloguing systems for dune seem to permit only absolute paths; this script alters what has been created by the cataloguing systems (Zappitiy; Movienizer) into a relative path system.

Essentially the script will rename the links to movie files on the assumption that the dune catalogue folder is located in the same base folder as your various movie files: i.e.

./Movies/ - contains all your videos
./Movies/.dune_catalogue - where this is the folder containing the catalogue

You must get the absolute path from one of the dune_folder.txt files for one of your videos ie usually in the first line of the dune_folder.txt:

media_url=smb:Z:/a/b/c/Movies/....

and when prompted by the script, copy up to and including the location of the Movie folder.

The script should be run from within the dune catalogue at the base ie:

./Movies/.dune_catalogue/dunehd_cataloguer.sh
