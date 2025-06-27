; #########################
; # Path of Exile Helper #
; # Ground Drop Only     #
; #########################

#IfWinActive Path of Exile  ; This script only runs when Path of Exile is the active window

#NoEnv                      ; Avoids empty environment variables
#SingleInstance Force       ; Prevents running multiple instances
SetMouseDelay 40            ; Slight delay between simulated mouse events
SetWorkingDir %A_ScriptDir% ; Set script directory as working directory
SendMode Input              ; Faster and more reliable input method

; Path to config file storing saved ground-drop coordinates
ConfigINI := A_ScriptDir . "\Config.ini"

; Initialize the config file with default coordinates if it doesn't exist
if !FileExist(ConfigINI) {
    IniWrite, 0, %ConfigINI%, GroundPos, xx  ; Default X position
    IniWrite, 0, %ConfigINI%, GroundPos, yy  ; Default Y position
}

; ==============================
; Right-Click and Hold to Drop
; ==============================

$RButton::
    ; Save the current mouse position
    MouseGetPos, Rx, Ry
    BlockInput, MouseMove  ; Prevent mouse movement while dropping

    ; Keep repeating as long as Right Button is held down
    Loop {
        if !GetKeyState("RButton", "P")  ; Stop when button is released
            break

        Click Right  ; Use the item (e.g., to activate a portal scroll)

        ; Read the configured ground-drop location
        IniRead, CordXX, %ConfigINI%, GroundPos, xx
        IniRead, CordYY, %ConfigINI%, GroundPos, yy

        Sleep 100
        MouseMove, CordXX, Ry, 0  ; Move mouse to drop position (same Y as starting point)
        Sleep 100
        Click                    ; Drop the item on the ground
        MouseMove, Rx, Ry, 0     ; Move back to original position
        Sleep 100
    }

    BlockInput, MouseMoveOff  ; Allow user mouse movement again
return

; =======================================
; Shift + F10 to Save New Drop Location
; =======================================

+F10::  ; Shift + F10
    MouseGetPos, xx, yy
    IniWrite, %xx%, %ConfigINI%, GroundPos, xx  ; Save current X
    IniWrite, %yy%, %ConfigINI%, GroundPos, yy  ; Save current Y

    ; Notify the user that new coordinates were saved
    TrayTip, Coordinates Saved, Ground drop X=%xx% Y=%yy%, 1
return
