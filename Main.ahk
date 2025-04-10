#NoEnv
SendMode Input

; Display a message box to confirm the script is running
MsgBox, Script is running! Press Ctrl+J to start, Ctrl+P to pause, and Esc to exit.

Pause := false ; Variable to track the pause state

; Start the loop when Ctrl+J is pressed
^j::
    Loop
    {
        if (Pause) ; If paused, wait and recheck
            Sleep, 100
        else
        {
            Click ; Perform a left mouse click
            Sleep, 100 ; Add a delay
            if (Pause) ; Check pause state after delay
                continue
            Send, {Backspace} ; Simulate pressing Backspace
            Sleep, 100 ; Add a delay
            if (Pause) ; Check pause state again
                continue
            Send, {Right} ; Simulate pressing the Right Arrow key
            Sleep, 100 ; Add a delay
        }
    }
return

; Toggle the pause state when Ctrl+P is pressed
^p::
    Pause := !Pause ; Switch between paused and running
    ToolTip, % Pause ? "Paused" : "Running" ; Show the current state in a tooltip
    Sleep, 1000 ; Display the tooltip for 1 second
    ToolTip ; Clear the tooltip
return

; Exit the script when Esc is pressed
Esc:: ExitApp
