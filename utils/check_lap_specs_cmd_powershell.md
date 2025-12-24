# 🖥️ Windows System Diagnostics & Hardware Info

## 1. PowerShell Commands

These commands provide detailed information about specific hardware components. Run PowerShell as **Administrator** for best results.

### 🪟 Operating System & General Info

Gets a quick summary of the Windows version, Architecture, and Total RAM.

```powershell
Get-ComputerInfo | Select-Object WindowsProductName, OsArchitecture, CsTotalPhysicalMemory, CsProcessors

```

*(For the full raw log, you can use `Get-ComputerInfo` by itself).*

### 🎮 Graphics Card (GPU)

Displays the name of your video card, VRAM size, and driver version.

```powershell
Get-CimInstance Win32_VideoController | Select-Object Name, AdapterRAM, DriverVersion | Format-Table -AutoSize

```

### 🧠 RAM Details (Physical Memory)

Shows details for each individual stick of RAM (Capacity, Speed, and Manufacturer).

```powershell
Get-CimInstance Win32_PhysicalMemory | Select-Object Capacity, Speed, Manufacturer, PartNumber | Format-Table -AutoSize

```

### ⚙️ Processor (CPU)

Shows Cores, Thread count, and Clock speed.

```powershell
Get-CimInstance Win32_Processor | Select-Object Name, MaxClockSpeed, NumberOfCores, ThreadCount | Format-Table -AutoSize

```

### 💾 Storage (Hard Drives / SSDs)

Identifies if your drive is an SSD or HDD and its size.

```powershell
Get-PhysicalDisk | Select-Object FriendlyName, MediaType, Size | Format-Table -AutoSize

```

## 2. Command Prompt (CMD) Tools

### ℹ️ System Information

**The Standard Report**
Gives a full overview of the system.

```cmd
systeminfo

```

**The Filtered Report**
Gives you just the OS Name, System Type (64/32 bit), and Total Memory.

```cmd
systeminfo | findstr /B /C:"OS Name" /C:"System Type" /C:"Total Physical Memory"

```

### 🔋 Battery Health Report

Generates a detailed HTML file regarding battery cycles and health.

1. **Run the command:**
```cmd
powercfg /batteryreport

```


2. **Locate the file:**
The terminal will verify the location (usually your User folder):
> *Battery life report saved to file path C:\Users\YourName\battery-report.html.*



---

## Battery Health Formulas

### Health Percentage
This calculates how much life is left compared to a brand-new battery.

$$
\text{Health \%} = \left( \frac{\text{Full Charge Capacity}}{\text{Design Capacity}} \right) \times 100
$$

### Wear Level
This calculates how much of the battery capacity has been lost permanently.

### Example Calculation
Based on previous data (75.6% Health):

$$
100\% - 75.6\% = \mathbf{24.4\%}
$$

\
$$
\text{Wear Level \%} = \left( \frac{\text{Design Capacity} - \text{Full Charge Capacity}}{\text{Design Capacity}} \right) \times 100
$$

## 4. System Administration Tools

**The "Process Killer"**

* **See running programs:**
```cmd
tasklist

```


* **Kill a frozen program:**
```cmd
taskkill /f /im notepad.exe

```


*(Replace `notepad.exe` with the name of the frozen application).*

**The "Software Installer" (Winget)**
Install software without a browser (Windows 10/11).

```cmd
winget search "app name"
winget install "app name"

```

* *Try:* `winget install VLC` or `winget install Discord`

---

## 5. Network Masters

**Detailed Connection Info**
Shows MAC address, DNS servers, and detailed IP info.

```cmd
ipconfig /all

```

**Stability Test (Ping Loop)**
Crucial for testing WiFi "dead zones."

```cmd
ping google.com -t

```

*(Press **Ctrl+C** to stop).*

**Active Connections**
Lists every active connection to the internet (useful for spotting malware).

```cmd
netstat -an

```

---

## 6. Maintenance & Repair

*Note: These usually require running CMD as Administrator.*

**System File Checker**
Scans Windows for corrupted files and repairs them automatically.

```cmd
sfc /scannow

```

**Check Disk**
Scans hard drive for errors and bad sectors.

```cmd
chkdsk /f

```

*(Note: This may require a computer restart to run).*

---
