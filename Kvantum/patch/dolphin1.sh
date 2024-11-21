rm ~/.config/Kvantum/dolphin1 -r
cp /usr/share/Kvantum/KvArc ~/.config/Kvantum/dolphin1 -r
mv ~/.config/Kvantum/dolphin1/KvArc.svg ~/.config/Kvantum/dolphin1/dolphin1.svg
mv ~/.config/Kvantum/dolphin1/KvArc.kvconfig ~/.config/Kvantum/dolphin1/dolphin1.kvconfig

#双击
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group %General --key click_behavior 2
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group %General --key translucent_windows true
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group %General --key blurring true

kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Hacks --key transparent_dolphin_view true

#Toolbar部分
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key interior.element rect
#frame上开一个botton,作为阴影,来自Lenny
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame.element rect
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame true
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame.left 0
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame.right 0
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame.top 0
kwriteconfig5 --file ~/.config/Kvantum/dolphin1/dolphin1.kvconfig --group Toolbar --key frame.bottom 4

#删除尾部的</svg>
sed '$d' /usr/share/Kvantum/KvArc/KvArc.svg > ~/.config/Kvantum/dolphin1/dolphin1.svg
cat ~/.config/Kvantum/patch/dolphin1.svg >> ~/.config/Kvantum/dolphin1/dolphin1.svg

cd ..
python ~/.config/Kvantum/patch/roundmenu.py dolphin1 "opacity:0.3;fill:#ffffff;"
