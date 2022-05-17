#!/usr/bin/env python3 
import subprocess
import os

def MapSave(dir, mapname):
    if not os.path.exists(dir):
        os.makedirs(dir)

    subprocess.run(["rosrun", "map_server", 
        "map_saver", "-f", dir+mapname])
    
    print("Map Saved")

# if __name__ == "__main__":
#     dir = "/home/funnywii/catkin_ws/src/testmaps/maps/"
#     mapname = "explore"
#     saveMap(dir, mapname)