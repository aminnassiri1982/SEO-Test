#!/bin/bash
# Geo-tags all images in a directory with Elite Dentistry location metadata.
# Usage: ./geotag-images.sh [directory]   (defaults to current directory)

DIR="${1:-.}"
LAT="33.63914579449413"
LON="117.59111343111357"
LAT_REF="N"
LON_REF="W"
ALTITUDE="200"
CITY="Rancho Santa Margarita"
STATE="California"
COUNTRY="United States"
COUNTRY_CODE="US"

find "$DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.tiff" -o -iname "*.tif" \) | while read -r img; do
  echo "Tagging: $img"
  exiftool \
    -GPSLatitude="$LAT" \
    -GPSLatitudeRef="$LAT_REF" \
    -GPSLongitude="$LON" \
    -GPSLongitudeRef="$LON_REF" \
    -GPSAltitude="$ALTITUDE" \
    -GPSAltitudeRef=0 \
    -IPTC:City="$CITY" \
    -IPTC:Province-State="CA" \
    -IPTC:Country-PrimaryLocationName="$COUNTRY" \
    -IPTC:Country-PrimaryLocationCode="$COUNTRY_CODE" \
    -XMP-iptcExt:LocationShownCity="$CITY" \
    -XMP-iptcExt:LocationShownProvinceState="$STATE" \
    -XMP-iptcExt:LocationShownCountryName="$COUNTRY" \
    -XMP-iptcExt:LocationShownCountryCode="$COUNTRY_CODE" \
    -XMP-iptcExt:LocationCreatedCity="$CITY" \
    -XMP-iptcExt:LocationCreatedProvinceState="$STATE" \
    -XMP-iptcExt:LocationCreatedCountryName="$COUNTRY" \
    -XMP-iptcExt:LocationCreatedCountryCode="$COUNTRY_CODE" \
    -overwrite_original \
    "$img"
done

echo "Done. All images tagged with Elite Dentistry location."
