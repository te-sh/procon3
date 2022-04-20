# URL: https://atcoder.jp/contests/abc072/tasks/arc082_a

n = int(input())
a = list(map(int, input().split()))

c = [0] * (10**5+1)
for ai in a:
    c[ai] += 1

m = 0
for i in range(0, 10**5-1):
    m = max(m, sum(c[i:i+3]))

print(m)
