# URL: https://atcoder.jp/contests/agc040/tasks/agc040_a

s = input()
n = len(s)+1
s = '>'+s+'<'

a = [0 for _ in range(n)]

for i in range(n):
    if s[i:i+2] == '<<':
        a[i] = a[i-1] + 1

for i in reversed(range(n)):
    if s[i:i+2] == '>>':
        a[i] = a[i+1] + 1

for i in range(n):
    if s[i:i+2] == '<>':
        a[i] = max(a[i-1], a[i+1]) + 1

print(sum(a))
