# URL: https://atcoder.jp/contests/abc121/tasks/abc121_b

n, m, c = map(int, input().split())
b = list(map(int, input().split()))
a = [list(map(int, input().split())) for _ in range(n)]

r = 0
for ai in a:
    s = sum([ai[j]*b[j] for j in range(m)]) + c
    if s > 0:
        r += 1

print(r)
