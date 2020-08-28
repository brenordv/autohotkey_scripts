#IncludeAgain %A_ScriptDir%/lib/toast.ahk ; Imports the lib file containing the ShowToast function.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
toast_title := "File clean up"

if WinActive("ahk_exe rider64.exe") {
    SendEvent {CtrlDown}{AltDown}{Enter}{CtrlUp}{AltUp} ; Reformat code
    SendEvent {CtrlDown}{AltDown}i{CtrlUp}{AltUp}       ; Adjust indentation
    SendEvent {CtrlDown}{AltDown}o{CtrlUp}{AltUp}       ; Optimize imports
    ShowToast("Jetbrains RIDER: File cleaned up!", toast_title)
}
else if WinActive("ahk_exe pycharm64.exe") {
    SendEvent {CtrlDown}{AltDown}{Enter}{CtrlUp}{AltUp} ; Reformat code
    SendEvent {CtrlDown}{AltDown}i{CtrlUp}{AltUp}       ; Adjust indentation    
    ShowToast("Jetbrains PYCHARM: File cleaned up!", toast_title)
}
else if WinActive("ahk_exe devenv.exe") {
    Send {CtrlDown}k{CtrlUp}{CtrlDown}d{CtrlUp} ; Reformat code + adjust indentation
    Send {CtrlDown}r{CtrlUp}{AltDown}g{AltUp}  ; Optimize imports
    ShowToast("Microsoft VS: File cleaned up!", toast_title)
}

exit ; Exit AHK