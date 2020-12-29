import asyncio

import httpx
from clipboard import copy


async def main():
    proxies = "http://127.0.0.1:7890"
    tracker_list = [
        "https://trackerslist.com/all.txt",
        "https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt",
    ]

    async def get_trackers(url: str):
        async with httpx.AsyncClient(proxies=proxies) as client:
            request = await client.get(url)
            return request.text.split("\n")

    get = await asyncio.gather(*map(get_trackers, tracker_list))
    copy("\n".join({x for sub in get for x in sub if x}))


asyncio.run(main())
