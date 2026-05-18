@echo off
echo Geo-tagging all images with Elite Dentistry location...
echo.

for %%f in (*.jpg *.jpeg *.png *.webp *.tiff *.tif) do (
    echo Tagging: %%f
    exiftool ^
      -GPSLatitude=33.63914579449413 ^
      -GPSLatitudeRef=N ^
      -GPSLongitude=117.59111343111357 ^
      -GPSLongitudeRef=W ^
      -GPSAltitude=200 ^
      -GPSAltitudeRef=0 ^
      -IPTC:City="Rancho Santa Margarita" ^
      -IPTC:Province-State="CA" ^
      -IPTC:Country-PrimaryLocationName="United States" ^
      -IPTC:Country-PrimaryLocationCode="US" ^
      -XMP-iptcExt:LocationShownCity="Rancho Santa Margarita" ^
      -XMP-iptcExt:LocationShownProvinceState="California" ^
      -XMP-iptcExt:LocationShownCountryName="United States" ^
      -XMP-iptcExt:LocationShownCountryCode="US" ^
      -XMP-iptcExt:LocationCreatedCity="Rancho Santa Margarita" ^
      -XMP-iptcExt:LocationCreatedProvinceState="California" ^
      -XMP-iptcExt:LocationCreatedCountryName="United States" ^
      -XMP-iptcExt:LocationCreatedCountryCode="US" ^
      -overwrite_original ^
      "%%f"
)

echo.
echo Done! All images have been geo-tagged.
pause
