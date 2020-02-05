import os
import re
while(True):
    车牌 = input("输入车牌: ")
    if(re.match(车牌, r'-')):
        url = "https://www.google.com/search?q=" + 车牌
        os.system(
            '"C:/Program Files (x86)/Google/Chrome/Application/chrome.exe" '+url)
