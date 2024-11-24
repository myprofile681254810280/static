ROOT="$(dirname "$(realpath "$0")")"
echo "$ROOT"

mv ~/.icons /dev/shm/
mv ~/.local/share/icons /dev/shm/
mv ~/.local/share/fonts /dev/shm/
mv ~/.local/share/fcitx5 /dev/shm/
mv ~/.local/share/wallpapers /dev/shm/

ln -s "$ROOT/.icons"          ~/
ln -s "$ROOT/icons"          ~/.local/share/
ln -s "$ROOT/fcitx5"         ~/.local/share/
ln -s "$ROOT/fonts"          ~/.local/share/
ln -s "$ROOT/wallpapers"          ~/.local/share/
