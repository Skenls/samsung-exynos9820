#!/bin/bash
# Magisk запинен вручную (после перехода на Rust релизы Magisk используют
# единый lib/<abi>/libmagisk.so вместо отдельных magisk32/64 — старая
# логика автоскачивания/распаковки больше не может их найти).
# Автозагрузка отключена намеренно — файлы ниже подготовлены и закоммичены руками.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for f in magiskinit magisk32.xz magisk64.xz stub.xz magisk_version; do
    if [ ! -f "$DIR/$f" ]; then
        echo "ERROR: $DIR/$f отсутствует — Magisk не подготовлен вручную." >&2
        exit 1
    fi
done
echo "Используем предзагруженный Magisk $(cat "$DIR/magisk_version")"
exit 0
