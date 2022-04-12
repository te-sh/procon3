# URL: https://atcoder.jp/contests/agc029/tasks/agc029_a

s = input()

r = 0
w = 0

for i, c in enumerate(s):
    if c == 'W':
        w += 1
        r += i-w+1

print(r)
