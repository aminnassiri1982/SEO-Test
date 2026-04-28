import os
import sys

FOLDER = os.path.expanduser("~/Downloads/dr. chan")

SEO_NAMES = [
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
    "cypress-dentist-near-me",
]

IMAGE_EXTENSIONS = {".jpg", ".jpeg", ".png", ".gif", ".webp", ".bmp", ".tiff", ".tif", ".avif"}


def rename_images():
    if not os.path.isdir(FOLDER):
        print(f"ERROR: Folder not found: {FOLDER}")
        print("Make sure the folder path is exactly: ~/Downloads/dr. chan")
        sys.exit(1)

    files = sorted([
        f for f in os.listdir(FOLDER)
        if os.path.splitext(f)[1].lower() in IMAGE_EXTENSIONS
    ])

    if not files:
        print("No image files found in the folder.")
        sys.exit(0)

    print(f"Found {len(files)} image(s) in: {FOLDER}\n")

    renamed = []
    for i, filename in enumerate(files):
        ext = os.path.splitext(filename)[1].lower()
        if i < len(SEO_NAMES):
            new_name = f"{SEO_NAMES[i]}{ext}"
        else:
            new_name = f"cypress-dentist-image-{i + 1:02d}{ext}"

        src = os.path.join(FOLDER, filename)
        dst = os.path.join(FOLDER, new_name)

        if os.path.exists(dst) and src != dst:
            print(f"  SKIP (already exists): {new_name}")
            continue

        os.rename(src, dst)
        renamed.append((filename, new_name))
        print(f"  {filename}  →  {new_name}")

    print(f"\nDone. Renamed {len(renamed)} file(s).")


if __name__ == "__main__":
    rename_images()
