# URL: https://atcoder.jp/contests/abc064/tasks/abc064_c

n = int(input())
a = list(map(int, input().split()))

r = [0] * 9
for ai in a:
    b = ai // 400
    if b >= 8:
        r[8] += 1
    else:
        r[b] += 1

s = 0
for ri in r[0:8]:
    if ri > 0:
        s += 1

if s == 0:
    print(1, r[8])
else:
    print(s, s + r[8])
