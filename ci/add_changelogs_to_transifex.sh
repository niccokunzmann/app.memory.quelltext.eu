#!/bin/bash

cd "`dirname \"$0\"`"
cd ..

tx=".tx/config"

for log in metadata/en/changelogs/*; do
  if cat "$tx" | grep -q "$log"; then
    echo "Changelog present: $log"
    continue
  fi
  lang="`echo \"$log\" | sed 's|/en/|/<lang>/|'`"
  number="`echo \"$log\" | grep -Eo '[0-9]+'`"
  (
    echo
    echo "[o:mundraub-android:p:learning-memory:r:fdroid-metadata-changelog-$number]"
    echo "file_filter  = $lang"
    echo "source_file  = $log"
    echo "type         = TXT"
    echo "minimum_perc = 100"
  ) >> "$tx"
done
