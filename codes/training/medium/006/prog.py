# URL: https://atcoder.jp/contests/abc075/tasks/abc075_b

h, w = map(int, input().split())
s = [input() for _ in range(h)]

r = ['' for _ in range(h)]
for i in range(h):
    for j in range(w):
        if s[i][j] == '#':
            r[i] += '#'
            continue
        c = 0
        for di in range(i-1, i+2):
            for dj in range(j-1, j+2):
                if 0 <= di < h and 0 <= dj < w and not (di == i and dj == j) and s[di][dj] == '#':
                    c += 1
        r[i] += str(c)

for ri in r:
    print(ri)
