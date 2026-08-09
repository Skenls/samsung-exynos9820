#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for f in magiskinit magisk32.xz magisk64.xz stub.xz magisk_version; do
    if [ ! -f "$DIR/$f" ]; then
        echo "ERROR: $DIR/$f отсутствует — Magisk v25.2 не подготовлен вручную." >&2
        exit 1
    fi
done
echo "Используем предзагруженный Magisk $(cat "$DIR/magisk_version")"
exit 0
