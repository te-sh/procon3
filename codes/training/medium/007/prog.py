# URL: https://atcoder.jp/contests/abc098/tasks/abc098_b

n = int(input())
s = input()

def f(s):
    r = 0
    for c in s:
        i = ord(c) - ord('a')
        r |= 1 << i
    return r

r = 0
for i in range(1, n):
    x = f(s[:i])
    y = f(s[i:])
    r = max(r, bin(x & y).count('1'))

print(r)
