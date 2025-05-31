mas_apps=(
  "411643860" # DaisyDisk
  "424389933" # FinalCutPro
  "1358823008" # Flighty
  "1502839586" # HandMirror
  "6446206067" # Klack
  "1532801185" # MyMind
  "897118787" # Shazam
)

for app_id in "${mas_apps[@]}"; do
    mas install "$app_id"
done