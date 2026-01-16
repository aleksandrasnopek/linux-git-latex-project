
#!/bin/bash

INBOX="inbox"
OUTDIR="${2:-classified}"

mkdir -p "$OUTDIR"

for file in "$INBOX"/*; do
 [ -f "$file" ] || continue
    mv "$file" "$OUTDIR/"
done

echo "Pliki przeniesione do: $OUTDIR"
