
# This file depends on settings in .Xmodmap
xmodmap ~/.Xmodmap

# Remap CapsLock to Esc/Ctrl
#setxkbmap -option 'caps:ctrl_modifier'
#xcape -e 'Caps_Lock=Escape'
xcape -e 'Control_L=Escape'

# Press both Shift keys for CapsLock
setxkbmap -option 'shift:both_capslock'


# Use Spacebar as a Modifier
spare_modifier="Hyper_L"
xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "add Hyper_L = $spare_modifier"
xmodmap -e "keycode any = space"
xcape -e "$spare_modifier=space"
