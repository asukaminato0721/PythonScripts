"""
@date: 2020年12月29日
@version: 1.0
@license: MIT

@usage: open http://zlibz.com/ , change WEBNAME to what you see
"""

import httpx
from fake_useragent import UserAgent
from lxml.etree import HTML

WEBNAME = "b49t"
URL = f"http://www.{WEBNAME}.com/cn/"
HIGH_MARK = "vl_bestrated.php?list&mode=&page=1"
UA = UserAgent()
headers = {"User-Agent": UA.random}
with httpx.Client() as client:
    response = client.get(f"{URL}{HIGH_MARK}", headers=headers)
    data = HTML(response.text, parser=None)
    print(
        *[
            x.text
            for x in data.xpath('//tr[@class="dimrow"]//a[@title]')
            if x.text is not None
        ],
        sep="\n",
    )
