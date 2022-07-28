# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see https://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
set $alt Mod1



# ========================================================================== #
#                            PLEASE, READ THIS!                              #
# ========================================================================== #
#                                                                            #
#      "# " means that the option it describes is active and available       #
#   "#!=" means that the option it describes is not active and deprecated    #
#                                                                            #
# ========================================================================== #


# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below. (When windows are stacked, it can show up,
# because of the window(s) title bar appearing)
font pango:DejaVu Sans 10

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
# font pango:DejaVu Sans Mono 8

#!= The combination of xss-lock, nm-applet and pactl is a popular choice, so
#!= they are included here as an example. Modify as you see fit.

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
exec --no-startup-id xss-lock --transfer-sleep-lock -- /home/netman/.i3/i3lock/lock -b=0x4

# This sets up time to the Europe/Warsaw timezone connecting to the ntp server
exec --no-startup-id sudo ntpdate pl.pool.ntp.org

# NetworkManager is the most popular way to manage wireless networks on Linux,
# and nm-applet is a desktop environment-independent system tray GUI for it.
exec --no-startup-id nm-applet

# Yakuake is a dropdown terminal, option below launches it on startup of i3
# (you can access it via an applet on polybar, or via clicking F12 on your keyboard)
exec --no-startup-id yakuake

# Use pactl to adjust volume in PulseAudio.
set $refresh_i3status pkill -SIGUSR1 i3status
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +10% && $refresh_i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -10% && $refresh_i3status
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

# Use Mouse + $mod (Windows key) to drag floating windows to their wanted position
floating_modifier $mod

# Start a terminal (konsole)
bindsym $mod+Return exec --no-startup-id konsole
bindsym Control+$alt+t exec --no-startup-id konsole

# Close (kill) focused window
bindsym $alt+F4 kill

#!= start dmenu (a program launcher)
#!= bindsym $mod+d exec dmenu_run
#!= There also is the (new) i3-dmenu-desktop which only displays applications
#!= shipping a .desktop file. It is a wrapper around dmenu, so you need that
#!= installed.
#!= bindsym $mod+s exec --no-startup-id i3-dmenu-desktop
#!= bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# Start rofi to launch programs
bindsym $mod+s exec --no-startup-id rofi -show drun -theme Witix -font "source code pro 12" -icon-theme "Papirus" -show-icons
bindsym $mod+d exec --no-startup-id rofi -show drun -theme Witix -font "source code pro 12" -icon-theme "Papirus" -show-icons

# Change focused window via keyboard
bindsym $mod+Shift+Left focus left
bindsym $mod+Shift+Down focus down
bindsym $mod+Shift+Up focus up
bindsym $mod+Shift+Right focus right

# Move focused window
bindsym $mod+Left move left
bindsym $mod+Down move down
bindsym $mod+Up move up
bindsym $mod+Right move right

# Split windows in horizontal orientation
bindsym $mod+h split h

# Split windows in vertical orientation
bindsym $mod+v split v

# Lockscreen
bindsym $mod+l exec --no-startup-id xset dpms force off && /home/netman/.i3/i3lock/lock -b=0x4

#!= bindsym $mod+l exec --no-startup-id xset dpms force off
#!= bindsym $mod+l exec --no-startup-id i3lock-fancy -d

# Open Vivaldi
bindsym $mod+1 exec --no-startup-id /opt/vivaldi/vivaldi
# Open Thunar
bindsym $mod+2 exec --no-startup-id thunar
# Open Telegram Desktop
bindsym $mod+3 exec --no-startup-id telegram-desktop
# Open Discord
bindsym $mod+4 exec --no-startup-id /usr/lib/discord/Discord
# Open Visual Studio Code
bindsym $mod+5 exec --no-startup-id code-oss

#!= open spotify
#!= bindsym $mod+6 exec --no-startup-id spotify

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+z layout stacking
bindsym $mod+x layout tabbed
bindsym $mod+c layout toggle split

# toggle tiling / floating
bindsym $mod+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+Shift+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"

# switch to workspace
#bindsym $mod+q workspace number $ws1
#bindsym $mod+w workspace number $ws2
#bindsym $mod+e workspace number $ws3
#bindsym $mod+r workspace number $ws4
#bindsym $mod+t workspace number $ws5
#bindsym $mod+y workspace number $ws6
#bindsym $mod+u workspace number $ws7
bindsym $mod+F1 workspace number $ws1
bindsym $mod+F2 workspace number $ws2
bindsym $mod+F3 workspace number $ws3
bindsym $mod+F4 workspace number $ws4
bindsym $mod+F5 workspace number $ws5
bindsym $mod+F6 workspace number $ws6
bindsym $mod+F7 workspace number $ws7
bindsym $mod+F8 workspace number $ws8
bindsym $mod+F9 workspace number $ws9

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number $ws1
bindsym $mod+Shift+2 move container to workspace number $ws2
bindsym $mod+Shift+3 move container to workspace number $ws3
bindsym $mod+Shift+4 move container to workspace number $ws4
bindsym $mod+Shift+5 move container to workspace number $ws5
bindsym $mod+Shift+6 move container to workspace number $ws6
bindsym $mod+Shift+7 move container to workspace number $ws7
bindsym $mod+Shift+8 move container to workspace number $ws8
bindsym $mod+Shift+9 move container to workspace number $ws9

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym Control+$alt+Delete exec --no-startup-id "i3-nagbar -t warning -m 'Do you want to exit i3?' -B 'Yes' 'i3-msg exit'"

# resize window (no resize mode)
bindsym $mod+$alt+Left resize shrink width 10 px or 10 ppt
bindsym $mod+$alt+Up resize grow height 10 px or 10 ppt
bindsym $mod+$alt+Down resize shrink height 10 px or 10 ppt
bindsym $mod+$alt+Right resize grow width 10 px or 10 ppt

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

# same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym $mod+$alt+r mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+$alt+r mode "resize"

# Start polybar
exec --no-startup-id polybar white

#!= Start i3bar to display a workspace bar (plus the system information i3status
#!= finds out, if available)
#!= bar {
#!=        status_command i3status
#!=        position top
#!=        font pango:fontawesome 10
#!= }

# Set window gaps
gaps inner 15
gaps outer 0

# Remove window title (upper border)
for_window [class="^.*"] border pixel 1, title_format " %title "

# Wallpaper
exec --no-startup-id nitrogen --restore

# Screenshots
bindsym $mod+Shift+s exec maim -s | exec xclip -selection clipboard -t image/png
bindsym $mod+Print exec maim ~/Obrazy/$(date +%s).png
bindsym $mod+Shift+Print exec maim -s ~/Obrazy/$(date +%s).png
bindsym Print exec maim | exec xclip -selection clipboard -t image/png

#brightness
bindsym XF86MonBrightnessUp exec --no-startup-id xbacklight -inc 5 # increase screen brightness
bindsym XF86MonBrightnessDown exec --no-startup-id xbacklight -dec 5 # decrease screen brightness

# Synaptics Touchpad options
exec --no-startup-id synclient TapButton1=1
exec --no-startup-id synclient TapButton2=3
exec --no-startup-id synclient TapButton3=2
exec --no-startup-id synclient TapAndDragGesture=2
exec --no-startup-id synclient HorizScrollDelta=-120
exec --no-startup-id synclient VertScrollDelta=-120

# Autorun transparent manager
exec --no-startup-id xcompmgr

# Keyboard QWERTY Polish
exec --no-startup-id setxkbmap pl

# Borders
exec smart_borders on
exec smart_borders no_gaps
exec border_radius 2