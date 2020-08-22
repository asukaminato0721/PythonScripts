from clipboard import copy
from requests import get

web = "https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt"
# 这里填代理端口
proxies = {
    "HTTP": "http://127.0.0.1:10809",
    "SOCKS5": "http://127.0.0.1:10808",
}
copy("\n".join(get(i, proxies=proxies).text for i in web))
