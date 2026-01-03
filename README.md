Edit: Well GGG has added the functionality in game now, so this ahk is pretty much useless now. 
To auto-open Stacked Decks post update, hold Ctrl + Right-Click on them to open decks continuously into your inventory, with chat notifications. For dropping cards on the ground (to use a strict loot filter), hold Shift + Ctrl + Right-Click, or use Shift + Right-Click for just dropping them

# Poe Auto Stacked Decks Opener (One-Click)

Effortlessly open Stacked Decks in Path of Exile using this AutoHotkey script. Ideal for players who want a fast, repeatable, and hands-free method of clicking and dropping Stacked Decks on the ground to reveal Divination Cards.

## 🔥 Features

- 🎯 **Auto click & drop stacked decks** to the exact saved ground location.
- 🖱️ **Hold right-click** to continuously use and drop items.
- 💾 **Customizable coordinates** — quickly set your drop location with a hotkey.
- 🧠 **Simple and safe** — blocks mouse movement during operation for accuracy.

## 🧰 Requirements

- [AutoHotkey v1.1+](https://www.autohotkey.com/)
- Windows PC
- Path of Exile game (running in **windowed or borderless** mode recommended)

---

## 🚀 How It Works

1. **Hold Right-Click**: The script repeatedly uses Stacked Decks and drops them on the ground.
2. **Save Drop Location**: Use the hotkey `Shift + F10` to record where you want your decks dropped.
3. **Optional**: Use my other AHK [Poe Inventory to stach](https://github.com/Pritesh1G/Poe-inventory-2-stash) to send all the div cards into your inventory with one click. 
---

## 💻 Installation

1. Download or copy the script to a `.ahk` file (e.g., `stacked_deck_opener.ahk`).
2. Double-click to run (AutoHotkey must be installed).
3. In-game, hover your mouse over your desired ground drop spot and press `Shift + F10` to save it.
4. Hold right-click while hovering over your Stacked Decks to begin auto-revealing.

---

## 🎮 Controls

| Hotkey        | Action                                   |
|---------------|------------------------------------------|
| **Right Click** (hold) | Use & drop stacked decks continuously |
| **Shift + F10**        | Save current mouse position as drop location |

---

## 📁 Config File

The script creates a `Config.ini` file in the same directory: 

```ini
[GroundPos]
xx=1234
yy=567
