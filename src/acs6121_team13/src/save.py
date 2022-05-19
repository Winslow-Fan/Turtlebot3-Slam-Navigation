#!/usr/bin/env python3 
import subprocess
import os

def MapSave(dir, mapname):
    if not os.path.exists(dir):
        os.makedirs(dir)
    subprocess.run(["rosrun", "map_server", 
        "map_saver", "-f", dir+mapname])  
    if os.path.exists(dir+mapname+'.yaml'):  
        print("Map Saved")

