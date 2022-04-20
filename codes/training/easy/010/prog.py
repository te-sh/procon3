# URL: https://atcoder.jp/contests/abc088/tasks/abc088_b

n = int(input())
a = list(map(int, input().split()))

a.sort(reverse=True)

s = [a[i] for i in range(0, n, 2)]
t = [a[i] for i in range(1, n, 2)]
print(sum(s) - sum(t))
