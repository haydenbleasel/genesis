declare -A mas_apps=(
  ["DaisyDisk"]="411643860"
  ["Final Cut Pro"]="424389933"
  ["Flighty"]="1358823008"
  ["Hand Mirror"]="1502839586"
  ["Klack"]="6446206067"
  ["MyMind"]="1520332347"
  ["Shazam"]="284993459"
  ["Sidus Link"]="1471951977"
)

for app_name in "${!mas_apps[@]}"; do
    mas install "${mas_apps[$app_name]}"
done