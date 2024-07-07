#!/usr/bin/env sh


# define functions

function print_error
{
cat << "EOF"
    ./volumecontrol.sh -[device] <action>
    ...valid device are...
        i -- [i]nput decive
        o -- [o]utput device
    ...valid actions are...
        i -- <i>ncrease volume [+5]
        d -- <d>ecrease volume [-5]
        m -- <m>ute [x]
EOF
exit 1
}

function notify_vol
{
    vol=`pulsemixer --get-volume | cut -f 1 -d ' ' | cat`
    angle="$(( (($vol+2)/5) * 5 ))"
    ico="${icodir}/volume-high.png"
    echo $ico
    bar=$(seq -s "." $(( $vol / 15 )) | sed 's/[0-9]//g')
    notify-send -u "low" -t 1000 -r 91190 -a "volctl" -h string:syncronous:volume -h int:value:$vol $nsink 
    echo "success"
}

function notify_mute
{
    mute=`pulsemixer --get-mute | cat`
    vol=`pulsemixer --get-volume | cut -f 1 -d ' ' | cat`

    if [ "$mute" != "0" ] ; then
        notify-send -u "normal" -t 1000 -r 91190 -a "volctl" -h string:syncronous:volume -h int:value:0 $nsink 
    else
        notify-send -u "normal" -t 1000 -r 91190 -a "volctl" -h string:syncronous:volume -h int:value:$vol $nsink 
    fi
}


# set device source

while getopts io SetSrc
do
    case $SetSrc in
    i) nsink=$(pulsemixer --list-sinks | grep "Default" | head -1 | awk -F '" "' '{print $NF}' | sed 's/"//')
        srce="--default-source"
        dvce="mic" ;;
    o) nsink=$(pulsemixer --list-sinks | grep "Default" | cut -d "[" -f2 | cut -d "," -f1)
        srce=""
        dvce="speaker" ;;
    esac
done

echo $nsink

if [ $OPTIND -eq 1 ] ; then
    print_error
fi


# set device action

shift $((OPTIND -1))
step="${2:-5}"
icodir="~/.config/mako/icons"

gtkMode=`gsettings get org.gnome.desktop.interface color-scheme | sed "s/'//g" | awk -F '-' '{print $2}'`
ncolor="-h string:bgcolor:#191724 -h string:fgcolor:#faf4ed -h string:frcolor:#56526e"

if [ "${gtkMode}" == "light" ] ; then
    ncolor="-h string:bgcolor:#f4ede8 -h string:fgcolor:#9893a5 -h string:frcolor:#908caa"
fi

case $1 in
    i) pulsemixer --change-volume +${step}
        notify_vol ;;
    d) pulsemixer --change-volume -${step}
        notify_vol ;;
    m) pulsemixer --toggle-mute
        notify_mute ;;
    *) print_error ;;
esac

