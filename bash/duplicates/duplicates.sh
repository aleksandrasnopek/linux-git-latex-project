#!/bin/bash

DIR="bash/duplicates/files"

declare -A HASHES

# 1. Liczenie hashy i grupowanie plików
for file in "$DIR"/*; do
    [ -f "$file" ] || continue
    hash=$(md5sum "$file" | awk '{print $1}')
    HASHES["$hash"]+="$file"$'\n'
done

# 2. Raportowanie i interakcja
for hash in "${!HASHES[@]}"; do
    files="${HASHES[$hash]}"
count=$(echo "$files" | wc -l)

    if [ "$count" -gt 1 ]; then
        echo "================================="
        echo "Znaleziono duplikaty:"
        echo "$files"

        read -p "Czy usunąć duplikaty (zostawić pierwszy)? [t/N] " answer

        if [[ "$answer" == "t" || "$answer" == "T" ]]; then
            echo "$files" | tail -n +2 | xargs rm
            echo "Duplikaty usunięte."
else
            echo "Pominięto."
        fi
    fi
done
