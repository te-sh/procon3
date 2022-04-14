# URL: https://atcoder.jp/contests/abc157/tasks/abc157_b

import itertools

a = [map(int, input().split()) for _ in range(3)]
n = int(input())
b = [int(input()) for _ in range(n)]

a = list(itertools.chain.from_iterable(a))
r = [ai in b for ai in a]

if (r[0] and r[1] and r[2]) or \
   (r[3] and r[4] and r[5]) or \
   (r[6] and r[7] and r[8]) or \
   (r[0] and r[3] and r[6]) or \
   (r[1] and r[4] and r[7]) or \
   (r[2] and r[5] and r[8]) or \
   (r[0] and r[4] and r[8]) or \
   (r[2] and r[4] and r[6]):
    print('Yes')
else:
    print('No')
