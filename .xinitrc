export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
fcitx &
#ck-launch-session /usr/bin/awesome
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session fcitx& /usr/bin/awesome
exec /usr/bin/awesome
until wmii; do
    true
done
setxkbmap -option terminate:ctrl_alt_bksp
