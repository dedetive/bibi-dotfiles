#
# Screenshot of current screen location
#
IMG="./tmp-lockscreen.png"

#
# Take screenshot of current screen
#
maim "$IMG"

#
# Apply blur and vignette effects to IMG
#
magick "$IMG" -scale 10% -blur 20x18 \( +clone -fill white -colorize 100 -background "gray(20%)" -vignette 30x500 \) -compose multiply -composite -scale 1000% "$IMG"

#
# Get i3lock arguments
#
LOCK_STYLE_MAIN=( )
LOCK_STYLE_SUCCESS=( )
mapfile -t LOCK_STYLE_MAIN < ./styles/main.style
LOCK_STYLE_MAIN_STRING="${LOCK_STYLE_MAIN[*]}"
mapfile -t LOCK_STYLE_SUCCESS < ./styles/success.style
LOCK_STYLE_SUCCESS_STRING="${LOCK_STYLE_SUCCESS[*]}"

#
# Real i3lock, requires passwords
#
if eval i3lock -i "$IMG" "$LOCK_STYLE_MAIN_STRING"; then

  #
  # If following is executed, the password has already been accepted
  #
  eval i3lock -i "$IMG" "$LOCK_STYLE_SUCCESS_STRING"

  #
  # Delay until it goes away
  #
  sleep 1.8

  #
  # Kill only the most recent i3lock daemon instance safely
  #
  killall -USR1 i3lock
fi

#
# Clear the temp screenshot
#
rm -f "$IMG"
