# URL: https://atcoder.jp/contests/abc086/tasks/abc086_b

import math
import sys

a, b = input().split()
n = int(a + b)

for i in range(1, 317):
    if i ** 2 == n:
        print('Yes')
        sys.exit()
print('No')
