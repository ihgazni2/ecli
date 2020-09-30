from efdir import fs
import os
import nvdict.dict_func as dfunc
from xdict.jprint import pobj 
from xlist.map import mapv
import sys
import json


def main():
    path = (sys.argv[1]) if (sys.argv.__len__()>=2) else "."
    arr = fs.walkd(path)
    pls = mapv(arr,lambda r:list(fs.path2pl(r)))
    paths = mapv(pls,lambda r:os.path.join('/',fs.pl2path(r)))
    for pl in pls:
        print(pl)
    print('=======')
    for p in paths:
        print(p)
