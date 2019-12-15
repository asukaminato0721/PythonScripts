import pyperclip
import requests

web = "https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt"
content = requests.get(web).text
content = "\n"+content
pyperclip.copy(content)
spam = pyperclip.paste()
