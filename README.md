
# Hacker Clashes - Modding & Automation Toolkit

This project demonstrates how I reverse-engineered and modded the game *Hacker Clashes* to explore security vulnerabilities, gameplay modification, and automated testing through Android tools and scripting.

---

## 🔧 Modifications

- **Player Invincibility**: Removed collision detection between the spaceship and alien lasers.
- **Octa Laser Power-Up**: Modified the player to fire 8 lasers simultaneously.
- **Custom Graphics**: Replaced default sprites and backgrounds using GIMP.
- **Debug Logging**: Injected `System.out.println()` calls in Smali to monitor internal state.

---

## 🛠 Tools Used

| Tool         | Purpose                                |
|--------------|----------------------------------------|
| Apktool      | Decompile APK to Smali code            |
| JADX GUI     | View and analyze decompiled Java code  |
| GIMP         | Edit sprites and visual assets         |
| ADB          | Interact with Android device via CLI   |
| Bash         | Automate gameplay using `adb shell`    |

---

## 🚀 Installation & Usage

### 1. Install the Modified APK *(Optional - not provided for users)*
```bash
adb install -r hacker_clash_modded.apk
```
> Instead of sharing the APK, see the before/after images and video demonstration below.

### 2. Run the Automation Script
```bash
chmod +x play_automation.sh
./play_automation.sh com.hackerclash.package
```

The script will:
- Launch the game
- Lock orientation to landscape
- Read screen resolution
- Simulate drag movements automatically

---

## 🖼️ Visual Comparison

### Before:
![Before Modding](https://github.com/user-attachments/assets/c02a32f9-8d2e-4299-986c-a0374cb25b33)


### After:
![After Modding](https://github.com/user-attachments/assets/7c45f192-83fc-4a9b-872b-e1fd9121a9a7)


> Includes updated alien sprites, UI graphics, and backgrounds

---

## 🎥 Video Demonstration

> 🔗 **Link to gameplay video** (before & after effects shown side by side)

*(Coming Soon)*

---

## 📂 File Structure

The project includes the automation script as part of the toolkit:
```
├── play_automation.sh             # Bash script for ADB automation
│   → Automates game launching, screen setup, and movement simulation
├── custom_sprites/                # Replaced visuals (PNG)
├── media/
│   ├── before_ui.png              # Before mod screenshot
│   ├── after_ui.png               # After mod screenshot
│   └── gameplay_demo.mp4         # Optional demo video
└── docs/
    └── writeup.md                 # Full reverse engineering blog-style write-up
```

---

## 📜 Included Script: `play_automation.sh`

```bash
#!/bin/bash

# Check for package name input
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <package_name>"
  exit 1
fi

PACKAGE_NAME=$1

# Launch the app
echo "🚀 Launching app: $PACKAGE_NAME"
adb shell monkey -p "$PACKAGE_NAME" -c android.intent.category.LAUNCHER 1
sleep 5
adb shell input tap 610 315

# Lock to landscape and get the width
adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 1
sleep 1

# Get screen size
SCREEN_SIZE=$(adb shell wm size | grep -oP '\d+x\d+')
SCREEN_WIDTH=$(echo $SCREEN_SIZE | cut -d'x' -f1)
SCREEN_HEIGHT=$(echo $SCREEN_SIZE | cut -d'x' -f2)
Y=$((SCREEN_HEIGHT / 2))
LEFT_X=0
RIGHT_X=$((SCREEN_WIDTH + 300))
Center=$((SCREEN_WIDTH / 2))

DURATION=3000

# Triggers
START_TRIGGER="START_DRAG"
STOP_TRIGGER="STOP_DRAG"
firstTime=false

# Drag function
perform_drag() {
  local X1=$1
  local X2=$2
  echo "📍 Dragging from $X1 to $X2 at Y=$Y..."
  adb shell input draganddrop $X1 $Y $X2 $Y $DURATION
}

echo "🕵️ Waiting for '$START_TRIGGER' in logcat..."

# Start watching logcat
adb logcat | while read -r line; do
  echo "✅ '$START_TRIGGER' detected. Starting drag loop..."
  if [ "$firstTime" = false ]; then
      firstTime=true
      perform_drag $Center  $RIGHT_X
      perform_drag $RIGHT_X $LEFT_X
      sleep 2
    fi

    while true; do
      perform_drag $LEFT_X $RIGHT_X
      perform_drag $RIGHT_X $LEFT_X
      # sleep 2

      # if adb logcat -d | grep -q "$STOP_TRIGGER"; then
      #   echo "🛑 '$STOP_TRIGGER' detected. Stopping."
      #   break
      # fi
    done

done
```

---

## ⚠️ Disclaimer
This project is for educational and ethical hacking purposes only. The modified APK is not shared. All media and content are for demonstration and learning use only. Do not use for distribution or commercial use.
