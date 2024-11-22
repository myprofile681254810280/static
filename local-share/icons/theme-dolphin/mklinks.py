import os
for n in os.listdir('/usr/share/icons/breeze'):
    p='/usr/share/icons/breeze/'+n
    if os.path.isdir(p):
        if not os.path.exists(n):
            os.symlink(p,n)

