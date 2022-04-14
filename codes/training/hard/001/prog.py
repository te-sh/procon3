# URL: https://atcoder.jp/contests/abc136/tasks/abc136_d

import re

s = input()
n = len(s)

b = re.findall('L+|R+', s)

r = [0] * n
i = 0
for bi in b:
    if bi[0] == 'R':
        for j in range(len(bi)):
            k = (len(bi)-j) % 2
            r[i+len(bi)-k] += 1
    else:
        for j in range(len(bi)):
            k = j % 2
            r[i-k] += 1
    i += len(bi)

print(*r)
