#Persistent
#SingleInstance Force

toggle := false ; Variable to track start/pause state

^p:: ; Ctrl + P to toggle start/pause
toggle := !toggle
return

Esc::ExitApp ; Escape to exit the script

Loop {
    if (!toggle) {
        Sleep, 100 ; Pause the loop if not toggled on
        continue
    }
    Click ; Simulate left mouse click
    Send, {Del} ; Simulate Delete key press
    Send, {Right} ; Simulate Right Arrow key press
    Sleep, 100 ; Add a small delay to prevent excessive speed
}