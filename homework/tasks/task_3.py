import asyncio
from dataclasses import dataclass
from typing import Awaitable


@dataclass
class Ticket:
    number: int
    key: str


async def coroutines_execution_order(coros: list[Awaitable[Ticket]]) -> str:
    result = await asyncio.gather(*coros)
    res = {}
    for i in range(len(result)):
        new_elem = result[i]
        res[new_elem.number] = new_elem.key
    sorted_res = dict(sorted(res.items()))
    new_str = ''
    for j in sorted_res.values():
        new_str = new_str + j
    return new_str
