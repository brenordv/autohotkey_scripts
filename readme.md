# Autohotkey Scripts
This is a repository of AHK scripts that i've made to share some scripts i find useful.


> Important note: This is not a product, i may take a long time to answer questions. 
> In any way, feel free to fork this repo and change it the way you see fit.


> Second important note: I'm adding an annoying number of comments in the script for educational purposes.



# How to use
Install the **current version** from the oficial site: https://www.autohotkey.com/
The (starting) version I use here is **1.1.32.00**. Consider it as the minimum required version.

Unless noted otherwise, all scripts here are **'one-shot'**, meaning that they will do whatever they do and then they will **exit**.

Have fun.



# Scripts
- ```ms_teams__toggle_mute.ahk```: Will change the focus to Microsoft Teams window, use the toogle-mute shortcut (Ctrl+Shit+M) and then change the focus back to the window you were using. (Won't work across Windows Desktops. I.E: You're using something in Desktop 1 and Ms Teams is in Desktop 2)

- ```play_pause_toggle.ahk```: Uses the Play/Pause media key. Good if you have extra keys on your Keyboard.

- ```all_in_one__clean_up.ahk```: Uses the shortcuts to reformat code and optimize imports for Visual Studio and JetBrains Rider.

## Lib
The lib is folder with auxiliary functions that can be used on any other script.

- ```toast.ahk :: ShowToast(message, title:="Info")```: The show toast function will show a tray tip with a message and title. (Note: Windows10 converts all balloons to win10 style notifications, which is good.)