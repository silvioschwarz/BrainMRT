#! /bin/sh

echo "converting PNG to gif"
convert -delay 10 -loop 0 *.png animation_.gif

