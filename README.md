# 💻 Laptop Check — Windows Utilities & CMD Tricks

A curated collection of Windows batch scripts, diagnostic tools, and command-line tricks for power users. From system health reports to fun CMD aesthetics — everything runs directly from a standard Windows terminal.

---

## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
- [Usage](#usage)
  - [System Utilities](#system-utilities)
  - [Power Management](#power-management)
  - [Cool Tricks](#cool-tricks)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [License](#license)

---

## Features

- **Battery Health Report** — generates a detailed HTML report via `powercfg`
- **System Diagnostics Report** — full hardware snapshot exported to HTML
- **Gaming Performance Report** — GPU, CPU, and RAM specs at a glance
- **Wi-Fi Password Revealer** — lists saved networks and their passwords
- **Junk Cleaner** — removes temp files and prefetch data
- **Power Menu** — interactive shutdown / restart / sleep / hibernate menu
- **CMD Cool Tricks** — ASCII animations, Matrix mode, color themes, Telnet fun
- **Guides & Docs** — Markdown walkthrough for every tool

---

## Project Structure

```
laptop_check/
├── cool_tricks/
│   ├── digital_clock.bat          # Animated ASCII clock
│   ├── matrix.bat                 # Matrix-style number stream
│   ├── Car_dashboard.bat          # Car dashboard visualization
│   ├── Dungeon_of_Code.bat        # Text-based adventure
│   └── cmd_cool_tricks.md         # Guide: shortcuts, Telnet, pranks
│
├── shutdown_restart_sleep/
│   ├── power_menu.bat             # Interactive power management menu
│   ├── SlideToShutdown.md         # Guide: tablet-style shutdown shortcut
│   └── Emergency_Restart.md       # Guide: force restart a frozen system
│
└── utils/
    ├── battery_check.bat          # Generates battery_report.html
    ├── system_report.bat          # Generates System_Report.html
    ├── gaming_report.bat          # Gaming specs report
    ├── wifi_reveal.bat            # Reveals saved Wi-Fi passwords
    ├── clean_junk.bat             # Deletes temp & prefetch files
    ├── check_lap_specs_cmd_powershell.md
    └── Simple Password Protected Folder (Batch Script).md
```

---

## Getting Started

No installation needed. All scripts run natively on Windows.

1. **Clone or download** this repository:
   ```cmd
   git clone https://github.com/khar-cyborg/laptop_check.git
   ```

2. **Navigate** to the folder of the tool you want to use.

3. **Right-click** the `.bat` file → **Run as Administrator** (required for battery reports and junk cleaning).

---

## Usage

### System Utilities

| Script | What it does | Admin required |
|---|---|---|
| `utils/battery_check.bat` | Generates an HTML battery health report and opens it in your browser | Yes |
| `utils/system_report.bat` | Exports a full system info snapshot to HTML | No |
| `utils/gaming_report.bat` | Reports GPU, CPU, and RAM specs | No |
| `utils/wifi_reveal.bat` | Lists all saved Wi-Fi networks and their passwords | Yes |
| `utils/clean_junk.bat` | Deletes `%TEMP%` and prefetch files | Yes |

### Power Management

| Script | What it does |
|---|---|
| `shutdown_restart_sleep/power_menu.bat` | Launches an interactive menu to shutdown, restart, sleep, or hibernate |

See [`SlideToShutdown.md`](shutdown_restart_sleep/SlideToShutdown.md) and [`Emergency_Restart.md`](shutdown_restart_sleep/Emergency_Restart.md) for additional Windows power tricks.

### Cool Tricks

| Script | What it does |
|---|---|
| `cool_tricks/digital_clock.bat` | Displays a live ASCII clock in the terminal |
| `cool_tricks/matrix.bat` | Streams green numbers for that hacker aesthetic |
| `cool_tricks/Car_dashboard.bat` | Renders a car dashboard in CMD |
| `cool_tricks/Dungeon_of_Code.bat` | A text-based dungeon adventure |

See [`cmd_cool_tricks.md`](cool_tricks/cmd_cool_tricks.md) for Telnet tricks, color codes, prompt customization, and more.

---

## Requirements

- **OS:** Windows 10 / 11
- **Shell:** Command Prompt (CMD) — some scripts use PowerShell internally
- **Permissions:** Some scripts require Administrator privileges (noted above)
- **Optional:** Telnet client enabled (for Telnet-based cool tricks)
  ```
  Windows Key + R → optionalfeatures → check "Telnet Client"
  ```

---

## Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a pull request.

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
