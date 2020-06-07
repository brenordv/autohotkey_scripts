#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
ShowToast(message, title:="Info") {
    TrayTip %title%, %message%
}