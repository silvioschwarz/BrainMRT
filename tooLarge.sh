#! 7bin/sh
find . -type f -size +100000k  -exec ls -sh {} \;

