import os
for n in os.listdir('/usr/share/icons/breeze'):
    p='/usr/share/icons/breeze/'+n
    if os.path.isdir(p):
        os.symlink(p,n)

