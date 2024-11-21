target=~/.config/Kvantum/cantata2dark 
kvconfig=~/.config/Kvantum/cantata2dark/cantata2dark.kvconfig 

rm $target -r
cp /usr/share/Kvantum/KvArc $target -r
mv $target/KvArc.kvconfig $kvconfig

#双击
kwriteconfig5 --file $kvconfig --group %General --key contrast 1.0
kwriteconfig5 --file $kvconfig --group %General --key intensity 1.2
kwriteconfig5 --file $kvconfig --group %General --key saturation 4.6
kwriteconfig5 --file $kvconfig --group %General --key translucent_windows true
kwriteconfig5 --file $kvconfig --group %General --key blurring true
kwriteconfig5 --file $kvconfig --group %General --key popup_blurring true

kwriteconfig5 --file $kvconfig --group GeneralColors --key base.color "#00000000"
#关掉alt
kwriteconfig5 --file $kvconfig --group GeneralColors --key alt.base.color "#00F0F000"
#透明button,还要改svg
kwriteconfig5 --file $kvconfig --group GeneralColors --key button.color "#fbfbfc80"



kwriteconfig5 --file $kvconfig --group GeneralColors --key text.color "white"
kwriteconfig5 --file $kvconfig --group GeneralColors --key window.text.color "white"



kwriteconfig5 --file $kvconfig --group Hacks --key blur_translucent true

#Toolbar部分
kwriteconfig5 --file $kvconfig --group Toolbar --key interior.element rect
#frame上开一个botton,作为阴影,来自Lenny
kwriteconfig5 --file $kvconfig --group Toolbar --key frame.element rect
kwriteconfig5 --file $kvconfig --group Toolbar --key frame true
kwriteconfig5 --file $kvconfig --group Toolbar --key frame.left 0
kwriteconfig5 --file $kvconfig --group Toolbar --key frame.right 0
kwriteconfig5 --file $kvconfig --group Toolbar --key frame.top 0
kwriteconfig5 --file $kvconfig --group Toolbar --key frame.bottom 4

#删除尾部的</svg>
sed '$d' /usr/share/Kvantum/KvArc/KvArc.svg > $target/cantata2dark.svg
cat ~/.config/Kvantum/patch/cantata2dark.svg >> $target/cantata2dark.svg

cd ..
python ~/.config/Kvantum/patch/roundmenu.py cantata2dark "opacity:0.3;fill:#ffffff;"
