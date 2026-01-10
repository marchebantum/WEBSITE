#!/bin/bash
# Image Optimization Script
# Converts PNGs to WebP and optimizes JPEGs

cd "$(dirname "$0")"
mkdir -p assets/images/optimized

echo "=== Image Optimization Script ==="
echo ""

# Check if cwebp is available (best option)
if command -v cwebp &> /dev/null; then
    echo "✓ cwebp found - Using for WebP conversion"
    USE_CWEBP=true
elif command -v sips &> /dev/null; then
    echo "⚠ cwebp not found - Using sips (limited WebP support)"
    echo "  To get better WebP compression, install: brew install webp"
    USE_CWEBP=false
else
    echo "❌ No image conversion tools found"
    exit 1
fi

# Optimize JPEGs (recompress at 85% quality)
echo ""
echo "=== Optimizing JPEG files ==="
for img in assets/images/*.jpeg assets/images/*.jpg; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        output="assets/images/optimized/${filename%.*}_optimized.jpg"
        sips -s format jpeg -s formatOptions 85 "$img" --out "$output" 2>/dev/null
        if [ $? -eq 0 ]; then
            old_size=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            new_size=$(stat -f%z "$output" 2>/dev/null || stat -c%s "$output" 2>/dev/null)
            reduction=$(awk "BEGIN {printf \"%.1f\", (1 - $new_size/$old_size) * 100}")
            echo "  ✓ $filename: $(numfmt --to=iec-i --suffix=B $old_size 2>/dev/null || echo ${old_size}B) → $(numfmt --to=iec-i --suffix=B $new_size 2>/dev/null || echo ${new_size}B) (${reduction}% reduction)"
        fi
    fi
done

# Convert large PNGs to WebP
echo ""
echo "=== Converting PNG to WebP ==="
for img in assets/images/*.png; do
    if [ -f "$img" ]; then
        filename=$(basename "$img")
        output="assets/images/optimized/${filename%.*}.webp"
        
        if [ "$USE_CWEBP" = true ]; then
            # Use cwebp for best compression
            cwebp -q 85 "$img" -o "$output" 2>/dev/null
        else
            # Use sips (creates JPEG first, then would need webp conversion)
            echo "  ⚠ Skipping $filename - WebP conversion requires cwebp"
            continue
        fi
        
        if [ -f "$output" ]; then
            old_size=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            new_size=$(stat -f%z "$output" 2>/dev/null || stat -c%s "$output" 2>/dev/null)
            reduction=$(awk "BEGIN {printf \"%.1f\", (1 - $new_size/$old_size) * 100}")
            echo "  ✓ $filename: $(numfmt --to=iec-i --suffix=B $old_size 2>/dev/null || echo ${old_size}B) → $(numfmt --to=iec-i --suffix=B $new_size 2>/dev/null || echo ${new_size}B) (${reduction}% reduction)"
        fi
    fi
done

echo ""
echo "=== Optimization Complete ==="
echo "Optimized images saved to: assets/images/optimized/"
echo ""
echo "Next steps:"
echo "1. Review optimized images"
echo "2. Replace originals with optimized versions"
echo "3. Update HTML to use WebP with JPEG/PNG fallbacks"
