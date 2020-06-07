#IncludeAgain %A_ScriptDir%/lib/toast.ahk ; Imports the lib file containing the ShowToast function.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendPlay {Media_Play_Pause} ; Press play/pause key.
ShowToast("Play/Pause toggle sent successfully!", "Play/Pause") ; Shows a toast to tell the user something happened.
exit ; Exit AHK