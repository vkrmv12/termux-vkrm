#!/bin/bash
grep -rl "com.termux" /root/termux-packages/g/TermuxAm \
  --include="*.java" \
  --include="*.kt" \
  --include="*.xml" \
  --include="*.sh" \
  --include="*.mk" \
  --include="*.gradle" \
  --include="*.txt" \
  --include="*.md" | while read -r file; do
    sed -i 's/com\.termux/com.vkrm/g' "$file" && echo "Replaced in: $file"
done
