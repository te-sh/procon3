# URL: https://atcoder.jp/contests/abc076/tasks/abc076_c

import copy

s = list(input())
t = list(input())

def applyT(s, t, i):
    r = copy.copy(s)
    for j in range(len(t)):
        if r[i+j] != '?' and r[i+j] != t[j]:
            return None
        r[i+j] = t[j]
    return r

c = []
for i in range(len(s)-len(t)+1):
    r = applyT(s, t, i)
    if r:
        for i in range(len(r)):
            if r[i] == '?':
                r[i] = 'a'
        c.append(str(r))

if c:
    print(min(c))
else:
    print('UNRESTORABLE')
