import httpx
from lxml import etree


def main():
    with httpx.Client() as client:
        response = client.get("https://baidu.com/")
        html = etree.HTML(response.text)

        for x in range(1, 10):
            if k := [
                x.text for x in html.xpath(f'//*[@id="s-top-left"]/a[{x}]')
            ]:
                print(k)


main()
