; clicking right alt will trigger right click  
Ralt::RButton
; switch capslock with esc since i use esc more often 
Capslock::Esc
Esc::Capslock

; vim movements when pressing left alt + h/j/k/l
<!h::Send {Left}
<!j::Send {Down}
<!k::Send {Up}
<!l::Send {Right}

; Move cursor left and right by one word
^<!h::SendInput, ^{Left}
^<!l::SendInput, ^{Right}

; Move cursor down and down by one paragraph
^<!j::SendInput, ^{Down}
^<!k::SendInput, ^{Up}

; remap alt + number keys to alt + function keys
<!4::Send {Alt down}{F4}{Alt up}

; Copy to clipboard the HEX color of the pixel under your cursor using CTRL+Win+LeftClick
^#LButton::
{
  MouseGetPos, MouseX, MouseY
  PixelGetColor, color, %MouseX%, %MouseY%, RGB
  StringLower, color, color
  clipboard := SubStr(color, 3)
  Return
}

; hotstrings to write current system's time and date

:*:datenow::
{
  FormatTime, DateString, , dddd, MMMM dd, yyyy
  Send %DateString%
  Return
}

:*:timenow::
{
  FormatTime, DateString, , HH:mm
  Send %DateString%
  Return
}