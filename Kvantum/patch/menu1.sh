rm ~/.config/Kvantum/menu1 -r
cp /usr/share/Kvantum/KvArc ~/.config/Kvantum/menu1 -r
mv ~/.config/Kvantum/menu1/KvArc.svg ~/.config/Kvantum/menu1/menu1.svg
mv ~/.config/Kvantum/menu1/KvArc.kvconfig ~/.config/Kvantum/menu1/menu1.kvconfig

kwriteconfig5 --file ~/.config/Kvantum/menu1/menu1.kvconfig --group %General --key popup_blurring true

cd ..
python ~/.config/Kvantum/patch/roundmenu.py menu1 "opacity:0.7;fill:#ffffff;"
