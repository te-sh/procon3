# URL: https://atcoder.jp/contests/abc060/tasks/abc060_b

import math

a, b, c = map(int, input().split())
g = math.gcd(a, b)

if c % g == 0:
    print('YES')
else:
    print('NO')
