# URL: https://atcoder.jp/contests/agc043/tasks/agc043_a

h, w = map(int, input().split())
s = [input() for _ in range(h)]

inf = 10**9
dp = [[inf] * w for _ in range(h)]
dp[0][0] = 1 if s[0][0] == '#' else 0
for i in range(h):
    for j in range(w):
        if i > 0:
            dp[i][j] = min(dp[i][j], dp[i-1][j] + (1 if s[i-1][j] == '.' and s[i][j] == '#' else 0))
        if j > 0:
            dp[i][j] = min(dp[i][j], dp[i][j-1] + (1 if s[i][j-1] == '.' and s[i][j] == '#' else 0))

print(dp[h-1][w-1])
