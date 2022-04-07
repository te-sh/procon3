# URL: https://atcoder.jp/contests/abc156/tasks/abc156_c

n = int(input())
x = list(map(int, input().split()))

r = 10**9
for p in range(1, 101):
    s = sum([(xi-p)**2 for xi in x])
    r = min(r, s)

print(r)
