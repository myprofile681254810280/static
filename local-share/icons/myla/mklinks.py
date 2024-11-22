import os
for n in os.listdir('../la-capitaine-icon-theme'):
    p='../la-capitaine-icon-theme/'+n
    if os.path.isdir(p):
        os.symlink(p,n)

