rm ~/.config/Kvantum/menudark1 -r
cp /usr/share/Kvantum/KvArcDark ~/.config/Kvantum/menudark1 -r
mv ~/.config/Kvantum/menudark1/KvArcDark.svg ~/.config/Kvantum/menudark1/menudark1.svg
mv ~/.config/Kvantum/menudark1/KvArcDark.kvconfig ~/.config/Kvantum/menudark1/menudark1.kvconfig

kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group %General --key popup_blurring true
#kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group %General --key translucent_windows true
#kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group %General --key blurring true
#
#kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group Hacks --key transparent_dolphin_view true
#
#kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group Toolbar --key interior.element rect
#kwriteconfig5 --file ~/.config/Kvantum/menudark1/menudark1.kvconfig --group Toolbar --key frame.element rect


cd ..
python ~/.config/Kvantum/patch/roundmenu.py menudark1 "opacity:0.5;fill:#000000;"
