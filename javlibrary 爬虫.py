import urllib.request
from bs4 import BeautifulSoup
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
url = 'http://www.r40z.com/cn/'
req = urllib.request.Request(url=url, headers=headers)
data = urllib.request.urlopen(req).read()
# 前面是爬取网页内容
soup = BeautifulSoup(data, 'lxml')  # 传入解析器
网页内容 = soup.get_text()
start = 网页内容.find("热门影片")
end = 网页内容.find("了解更多")
正文 = 网页内容[start + 7:end]

写入文件 = open("D:/test.txt", "w")
写入文件.write(正文)
写入文件.close()
