### Windows Folder Locker Tools

Below are two methods to hide folders on Windows. One uses system attributes, and the other uses an interactive Batch script.

> **⚠️ SECURITY WARNING** > These methods provide **visual privacy only**. They are **not** encrypted.
> * A knowledgeable user can still find these files.
> * Anyone can edit the script to view the password.
> * Do not use this for sensitive financial or personal data.

### Method 1: The "Invisible" Attribute (Simple)

This method hides a folder from the standard Explorer view using the command line.

**To Hide:**
Open Command Prompt in the folder location and type:

```cmd
attrib +h +s "MySecretFolder"

```

**To Unhide:**

```cmd
attrib -h -s "MySecretFolder"

```

### Method 2: Password Protected Locker (Script)

This script creates a folder named `PrivateFolder`. When locked, it renames the folder to a Windows Class ID (CLSID) and applies system attributes to hide it.

#### Setup Instructions

1. Create a new file named `locker.bat`.
2. Paste the code below into the file.
3. **Update the password:** Find `YOUR_PASSWORD_HERE` in the code and change it to your secret password.
4. Save the file.

#### The Script Code

```batch
@ECHO OFF
title Folder Locker
color 0A
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST PrivateFolder goto MDLOCKER

:CONFIRM
echo ---------------------------------------------------
echo       ARE YOU SURE YOU WANT TO LOCK THE FOLDER?
echo ---------------------------------------------------
echo.
set/p "cho=> (Y/N): "
if /I "%cho%"=="Y" goto LOCK
if /I "%cho%"=="N" goto END
echo Invalid choice.
goto CONFIRM

:LOCK
ren PrivateFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo.
echo Folder locked successfully.
timeout /t 2 >nul
goto End

:UNLOCK
echo ---------------------------------------------------
echo           ENTER PASSWORD TO UNLOCK
echo ---------------------------------------------------
echo.
set/p "pass=> Password: "
if NOT "%pass%"=="YOUR_PASSWORD_HERE" goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" PrivateFolder
echo.
echo Folder Unlocked Successfully.
goto End

:FAIL
echo.
echo ! INVALID PASSWORD !
echo.
pause
cls
goto UNLOCK

:MDLOCKER
md PrivateFolder
echo PrivateFolder created successfully.
goto End

:End

```

#### How to use

1. Run `locker.bat` once to create the **PrivateFolder**.
2. Put your files inside.
3. Run `locker.bat` again to **lock** it (Type `Y`).
4. Run it a third time and enter your password to **unlock** it.

```
