# URL: https://atcoder.jp/contests/abc048/tasks/abc048_b

a, b, x = map(int, input().split())

r = b // x
if a > 0:
    r -= (a-1) // x
else:
    r += 1

print(r)
