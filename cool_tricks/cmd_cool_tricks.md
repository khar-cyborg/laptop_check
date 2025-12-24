
# 💻 Windows CMD: Tricks, Pranks & Utilities



---

## 1. Productivity & Shortcuts

**Keyboard History (The "Pro" Trick)**

* **F7:** Opens a pop-up ASCII window showing your command history. Use arrow keys to select.
* **Up Arrow:** Repeats the last command (standard).

**Essential Shortcuts**

* **Tab:** Auto-completes file or folder names. (Cycle through options by hitting Tab repeatedly).
* **F3:** Instantly pastes the last command you typed.
* **Esc:** Clears the current line.
* **Ctrl + C:** The **Panic Button**. Forces any running command (like a ping loop or tree) to stop immediately.

**Send Output to Clipboard**
Save the output of *any* command to your clipboard instead of showing it on screen.

```cmd
[command] | clip

```

*(Example: `dir | clip` copies the file list to your clipboard).*

---

**Color Codes Reference**
Use `color [Background][Text]` (e.g., `color 0A` is Black background, Green text).

| Code | Color | Code | Color |
| --- | --- | --- | --- |
| **0** | Black | **A** | Light Green |
| **1** | Blue | **B** | Light Aqua |
| **2** | Green | **C** | Light Red |
| **4** | Red | **E** | Light Yellow |
| **7** | White | **F** | Bright White |

---

## 2. Prerequisites: Enable Telnet

Many of the "fun" ASCII commands require the Telnet client, which is disabled by default in modern Windows.

1. Press **Windows Key + R**.
2. Type `optionalfeatures` and hit **Enter**.
3. Scroll down to **Telnet Client**, check the box, and click **OK**.

---

## 3. Fun & ASCII Art

Once Telnet is enabled, try these commands to watch movies or see animations in text format.

**Watch "Star Wars: Episode IV"**

```cmd
telnet towel.blinkenlights.nl

```

**Party Parrot Animation**

```cmd
curl parrot.live

```

**Weather Reports**

```cmd
curl wttr.in
curl wttr.in/London
curl wttr.in/Tokyo

```

**Telehack (The Text-Based Web)**
Connect to a retro simulator:

```cmd
telnet telehack.com

```

* **Once connected, try typing:**
* `cowsay Hello` (Make a cow talk)
* `starwars` (Watch the movie here too)
* `aquarium` (See an ASCII ocean)



---

## 4. The "Hacker" Aesthetic & Pranks

**"Matrix" Mode**
Change the text to green and list all files rapidly to look busy.

```cmd
color 0a
cls
dir /s

```

**Change Window Title**

```cmd
title Hacking the Mainframe

```

**Create a Fake "Virus" Prank**
This initiates a shutdown countdown with a custom message.

```cmd
shutdown -s -t 60 -c "CRITICAL ERROR: VIRUS DETECTED. SYSTEM DELETION IMMINENT."

```

> **⚠️ How to save yourself (The Abort Command):**
> To stop the shutdown immediately, type:
> ```cmd
> shutdown -a
> 
> ```
> 
> 

---

## 5. Customization & Visuals

**Customize Your Prompt**

* **Change to "Gemini is watching >":** `prompt Gemini is watching $g`
* **Add Timestamps (Useful!):** `prompt $t $p$g`
* **Reset to default:** `prompt`

**Visual Tree**
See a graphical map of your folders.

```cmd
tree

```




