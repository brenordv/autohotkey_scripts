#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SetTitleMatchMode 2 ; Changes the way AHK matches the window title to PARTIAL
IfWinExist, Microsoft Teams ; If there's a Microsoft Teams Window...
{     
     WinGetTitle, currentWindowTitle, A ;...saves your current window
     WinActivate, Microsoft Teams ; ...then active Teams window
     Send, ^+M ; ...and send the combination to toggle mute.     
     WinActivate, %currentWindowTitle% ; ...then re-activate your previous window.
}
else {} ; if there's no MS Teams windows, do nothing.
exit ; Exit AHK