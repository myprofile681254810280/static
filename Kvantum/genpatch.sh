#!/bin/bash
#bash ./genpatch.sh KvArc KvArcCantataKwin > patch/CantataKwin.patch
#bash ./genpatch.sh KvArc KvArcDolphinKwin > patch/DolphinKwin.patch
#bash ./genpatch.sh KvArc KvArcCantata> patch/Cantata.patch
#bash ./genpatch.sh KvArc KvArcDolphin> patch/Dolphin.patch
#bash ./genpatch.sh KvArcDark KvArcDarkMenuKwinDark> patch/MenuKwinDark.patch
#bash ./genpatch.sh KvArc KvArcDesktopMenuKwin > patch/DesktopMenuKwin.patch
#bash ./genpatch.sh KvArc KvArcMenuKwin> patch/MenuKwin.patch
#bash ./genpatch.sh KvArcDark KvArcDarkCantataKwin > patch/CantataKwinDark.patch
#bash ./genpatch.sh KvArc KvArcNotiKwin > patch/NotiKwin.patch

#bash ./genpatch.sh KvRoughGlass KvRoughGlassRoundMenu > patch/RoundMenu.patch
template="$1"
modified="$2"
cp "/usr/share/Kvantum/$template/$template.kvconfig" "$modified/k" 
cp "/usr/share/Kvantum/$template/$template.svg" "$modified/s" 

diff -ura "$modified/k" "$modified/$modified.kvconfig"
diff -ura "$modified/s" "$modified/$modified.svg"
