# URL: https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_b

import sys

n = int(input())

for i in range(1, n+1):
    if n == i * 108 // 100:
        print(i)
        sys.exit()

print(':(')
