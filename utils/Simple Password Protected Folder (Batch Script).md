### Windows Folder Locker Tools

> **⚠️ SECURITY WARNING** > These methods provide **visual privacy only**. They are **not** encrypted.
> * A knowledgeable user can still find these files.
> * Anyone can edit the script to view the password.
> * Do not use this for sensitive financial or personal data.

###  1: The "Invisible" Attribute (Simple)

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

###  2: Password Protected Locker (Script)

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

# Windows Hidden Tricks

## 3. "God Mode" (Master Control Panel)
This creates a single folder that contains links to *every* setting in Windows—over 200 distinct administrative tools in one list. It feels very "hacker-ish" to set up.

### How to do it:
1.  **Right-click** on your desktop and select **New** > **Folder**.
2.  Rename the folder to the following code exactly (copy and paste the line below):
    
    `GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}`

3.  Press **Enter**.
4.  The folder icon will change to a control panel icon. Open it to access everything.

---

## 4. The "Invisible" Folder
You can create a folder on your desktop that has no name and no icon, effectively making it invisible to anyone who doesn't know where it is.

### How to do it:
1.  Create a **New Folder**.
2.  **Right-click** it and select **Rename**.
3.  Hold down the **Alt** key and type `0160` on your number pad (the numbers on the right side of your keyboard), then release **Alt** and press **Enter**.
    * *Note: This types a "blank" character.*
4.  **Right-click** the folder again > **Properties** > **Customize** tab > **Change Icon...**
5.  Scroll to the right until you see blank/empty spaces in the icon list. Select one of them and click **OK**.
6.  Click **OK** again. The folder is now invisible until you hover over it or highlight it.
