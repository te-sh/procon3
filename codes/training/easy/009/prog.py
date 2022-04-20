# URL: https://atcoder.jp/contests/abc074/tasks/abc074_b

n = int(input())
k = int(input())
x = list(map(int, input().split()))

print(sum([min(xi, abs(xi-k)) for xi in x]) * 2)
