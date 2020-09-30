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
    d = dfunc.plsdfs_to_kstruct(pls)
    print(json.dumps(d))
