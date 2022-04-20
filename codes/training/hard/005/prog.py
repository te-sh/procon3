# URL: https://atcoder.jp/contests/abc141/tasks/abc141_d

import heapq

n, m = map(int, input().split())
a = list(map(int, input().split()))

b = [-ai for ai in a]

heapq.heapify(b)
for _ in range(m):
    c = heapq.heappop(b)
    heapq.heappush(b, -((-c)//2))

print(-sum(b))
