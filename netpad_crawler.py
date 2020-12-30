import httpx
import asyncio


async def new_func():
    async def get(idx: int):
        async with httpx.AsyncClient(
            base_url="https://www.netpad.net.cn/resourceAdmin/netpadFile/"
        ) as client:
            response = await client.get(str(idx))
        try:
            return response.json()["browse"]
        except Exception:
            return -1

    result = await asyncio.gather(*map(get, range(10000, 10100)))
    return dict(zip(range(10000, 10050), result))


print(asyncio.run(new_func()))
