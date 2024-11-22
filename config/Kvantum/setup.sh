#!/bin/bash

#这个的用途是作为模板为其他主题提供圆角menu
bash ./patch.sh KvRoughGlass RoundMenu

bash ./patch.sh KvArcDark MenuKwinDark
bash ./patch.sh KvArc DesktopMenuKwin
bash ./patch.sh KvArc MenuKwin
bash ./patch.sh KvArcDark CantataKwinDark

bash ./patch.sh KvArc NotiKwin

python ./patch/roundmenu.py KvArcDarkMenuKwinDark "opacity:0.5;fill:#000;"
python ./patch/roundmenu.py KvArcDesktopMenuKwin "opacity:0.4;fill:#ffffff;"
python ./patch/roundmenu.py KvArcMenuKwin "opacity:0.7;fill:#ffffff;"

#失败,不能共用
#bash ./patch.sh KvArcDark CantataKwin
#bash ./patch.sh KvArc MenuKwin
