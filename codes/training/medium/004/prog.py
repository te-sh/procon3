# URL: https://atcoder.jp/contests/abc066/tasks/abc066_b

import sys

s = input()
n = len(s)//2

for i in reversed(range(n)):
    if s[0:i] == s[i:i*2]:
        print(i*2)
        sys.exit()
