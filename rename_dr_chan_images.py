import os
import subprocess

FOLDER = r"C:\Users\aminn\Downloads\Dr.chan"

IMAGE_EXTENSIONS = {".jpg", ".jpeg", ".png", ".gif", ".webp", ".bmp", ".tiff", ".tif", ".avif"}

NAMES = {
    "s": [
        "cypress-dentist-dr-chan",
        "cypress-dental-team-member",
        "cypress-dental-hygienist",
        "cypress-dental-assistant",
        "cypress-dental-receptionist",
        "cypress-dental-staff",
        "cypress-dentist-headshot",
        "cypress-dental-team",
    ],
    "p": [
        "cypress-dental-patient-smile",
        "cypress-happy-dental-patient",
        "cypress-patient-teeth-whitening",
        "cypress-patient-dental-exam",
        "cypress-patient-consultation",
        "cypress-patient-dental-cleaning",
        "cypress-patient-dental-care",
        "cypress-patient-smile-makeover",
    ],
    "o": [
        "cypress-dental-office",
        "cypress-dental-waiting-room",
        "cypress-dental-treatment-room",
        "cypress-modern-dental-office",
        "cypress-dental-equipment",
        "cypress-dental-reception-area",
        "cypress-dental-operatory",
        "cypress-dental-office-interior",
    ],
}

counts = {"s": 0, "p": 0, "o": 0}

files = sorted([f for f in os.listdir(FOLDER) if os.path.splitext(f)[1].lower() in IMAGE_EXTENSIONS])

if not files:
    print("No images found in folder.")
    input("Press Enter to exit.")
    exit()

print(f"Found {len(files)} image(s). Each image will open automatically.\n")
print("For each image, press:")
print("  S = Staff")
print("  P = Patient")
print("  O = Office")
print("  Q = Quit\n")

for f in files:
    full_path = os.path.join(FOLDER, f)
    subprocess.Popen(["explorer", full_path])

    print(f"Image: {f}")
    choice = input("  Type S / P / O then Enter: ").strip().lower()

    if choice == "q":
        print("Quitting early.")
        break

    if choice not in ("s", "p", "o"):
        print("  Skipped (invalid input).\n")
        continue

    idx = counts[choice]
    name_list = NAMES[choice]
    if idx < len(name_list):
        base = name_list[idx]
    else:
        base = f"cypress-{choice}-dental-photo-{idx + 1:02d}"

    ext = os.path.splitext(f)[1].lower()
    new_name = f"{base}{ext}"
    dest = os.path.join(FOLDER, new_name)

    os.rename(full_path, dest)
    counts[choice] += 1
    print(f"  Renamed -> {new_name}\n")

print("\nAll done!")
print(f"  Staff renamed:   {counts['s']}")
print(f"  Patient renamed: {counts['p']}")
print(f"  Office renamed:  {counts['o']}")
input("\nPress Enter to close.")
