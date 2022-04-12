# URL: https://atcoder.jp/contests/abc065/tasks/abc065_b

import sys

n = int(input())
a = [int(input())-1 for _ in range(n)]

e = 0
d = 0

visited = [False for _ in range(n)]
visited[0] = True

while True:
    e = a[e]
    d += 1
    if e == 1:
        print(d)
        sys.exit()
    if visited[e]:
        print(-1)
        sys.exit()
    visited[e] = True
