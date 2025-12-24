# How to Create a "Slide to Shutdown" Shortcut in Windows

The "Slide to Shutdown" feature is a hidden UI element in Windows (10 and 11) originally designed for tablets, but it works on desktop PCs as well. It provides a satisfying graphical interface to turn off your computer.

## Step-by-Step Instructions

1.  **Right-click** on an empty space on your desktop.
2.  Select **New** > **Shortcut**.
3.  In the box labeled "Type the location of the item," paste the following command exactly:
    
    `%windir%\System32\SlideToShutDown.exe`

4.  Click **Next**.
5.  Type a name for the shortcut (e.g., `Slide to Shutdown`).
6.  Click **Finish**.

## Optional: Change the Icon
The default icon will look like a generic application. To make it look like a power button:

1.  **Right-click** your new shortcut and select **Properties**.
2.  Go to the **Shortcut** tab and click the **Change Icon...** button.
    * *Note: If a warning pops up saying the file contains no icons, just click OK.*
3.  In the box "Look for icons in this file," paste: `%SystemRoot%\system32\shell32.dll` and press Enter.
4.  Select the red **Power** icon (or any icon you prefer).
5.  Click **OK**, then click **OK** again to close the properties window.

## How to Use It
1.  **Double-click** the shortcut you just created.
2.  Your lock screen image will roll down from the top of the screen covering half the display.
3.  **Click and drag** the image down to the bottom of the screen to shut down your PC.
4.  To cancel, simply click the empty space at the top of the screen or swipe up.