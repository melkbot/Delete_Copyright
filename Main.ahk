#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

MsgBox, Script is running! Press F1 to start, Ctrl+P to pause, and Esc to exit. ; Confirm script is running

Pause := false ; Variable to track pause state

F1:: ; Press F1 to start the loop
    Loop
    {
        if (Pause) ; Check if the script is paused
            Sleep, 100 ; Wait while paused
        else
        {
            Click ; Perform a left mouse click
            Send, {Delete} ; Press the Delete key
            Send, {Right} ; Press the Right Arrow key
            Sleep, 100 ; Add a small delay to avoid overwhelming the system
        }
    }
return

^p:: ; Press Ctrl+P to toggle pause
    Pause := !Pause ; Toggle the pause state
    ToolTip, % Pause ? "Paused" : "Running" ; Show tooltip indicating the state
    Sleep, 1000
    ToolTip ; Remove tooltip after 1 second
return

Esc:: ; Press Escape to exit the script
    ExitApp
return
