#IncludeAgain %A_ScriptDir%/lib/toast.ahk ; Imports the lib file containing the ShowToast function.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
toast_title := "MS Teams mute toggle"
SetTitleMatchMode 2 ; Changes the way AHK matches the window title to PARTIAL
IfWinExist, Microsoft Teams ; If there's a Microsoft Teams Window...
{     
     WinGetTitle, currentWindowTitle, A ;...saves your current window
     if ErrorLevel{ ;  Tells the user something went wrong.
          ShowToast("Could not save your current window.", toast_title)
          exit
     }
          

     WinActivate, Microsoft Teams ; ...then active Teams window
     if ErrorLevel{ ;  Tells the user something went wrong.
          ShowToast("Could not activate Teams window.", toast_title)
          exit
     }

     Send, ^+M ; ...and send the combination to toggle mute.     
     WinActivate, %currentWindowTitle% ; ...then re-activate your previous window.
     if ErrorLevel{ ;  Tells the user something went wrong.
          ShowToast("Could not restore the focus to your previous window.", toast_title)
          exit
     }
     ShowToast("Teams mute toggle sent successfully!", toast_title)
}
else { ; if there's no MS Teams windows, do nothing.
     ShowToast("Could not find Teams window.", toast_title)
} 
exit ; Exit AHK