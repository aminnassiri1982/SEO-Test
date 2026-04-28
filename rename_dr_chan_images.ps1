$folder = "$env:USERPROFILE\Downloads\dr. chan"

$seoNames = @(
    "cypress-dentist-dr-chan",
    "cypress-dental-office",
    "cypress-tx-family-dentist",
    "cypress-cosmetic-dentistry",
    "cypress-teeth-cleaning",
    "cypress-dental-exam",
    "cypress-dental-xray",
    "cypress-smile-makeover",
    "cypress-teeth-whitening",
    "cypress-dental-implants",
    "cypress-porcelain-veneers",
    "cypress-emergency-dentist",
    "cypress-pediatric-dentist",
    "cypress-orthodontics",
    "cypress-dental-crowns",
    "cypress-root-canal-treatment",
    "cypress-dental-bonding",
    "cypress-gum-disease-treatment",
    "cypress-invisalign-dentist",
    "cypress-dental-care-team",
    "cypress-modern-dental-office",
    "cypress-dental-waiting-room",
    "cypress-dental-technology",
    "cypress-patient-consultation",
    "cypress-dentist-near-me"
)

$imageExtensions = @(".jpg", ".jpeg", ".png", ".gif", ".webp", ".bmp", ".tiff", ".tif", ".avif")

if (-not (Test-Path $folder)) {
    Write-Host "ERROR: Folder not found: $folder" -ForegroundColor Red
    Write-Host "Make sure the folder is named exactly: dr. chan  (inside your Downloads folder)"
    pause
    exit
}

$files = Get-ChildItem -Path $folder | Where-Object {
    $imageExtensions -contains $_.Extension.ToLower()
} | Sort-Object Name

if ($files.Count -eq 0) {
    Write-Host "No image files found in: $folder" -ForegroundColor Yellow
    pause
    exit
}

Write-Host "Found $($files.Count) image(s) in: $folder`n"

$i = 0
foreach ($file in $files) {
    $ext = $file.Extension.ToLower()
    if ($i -lt $seoNames.Count) {
        $newName = "$($seoNames[$i])$ext"
    } else {
        $newName = "cypress-dentist-image-{0:D2}$ext" -f ($i + 1)
    }

    $dest = Join-Path $folder $newName

    if ((Test-Path $dest) -and ($dest -ne $file.FullName)) {
        Write-Host "  SKIP (already exists): $newName" -ForegroundColor Yellow
    } else {
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Host "  $($file.Name)  ->  $newName" -ForegroundColor Green
    }

    $i++
}

Write-Host "`nDone! Renamed $i file(s)." -ForegroundColor Cyan
pause
