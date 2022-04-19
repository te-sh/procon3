# URL: https://atcoder.jp/contests/jsc2019-qual/tasks/jsc2019_qual_b

MOD = 10**9+7

class Mint:
    def __init__(self, v):
        self.v = v % MOD

    def __add__(self, other):
        return (
            Mint(self.v + other.v) if isinstance(other, Mint) else
            Mint(self.v + other)
        )

    def __sub__(self, other):
        return (
            Mint(self.v - other.v) if isinstance(other, Mint) else
            Mint(self.v - other)
        )

    def __mul__(self, other):
        return (
            Mint(self.v * other.v) if isinstance(other, Mint) else
            Mint(self.v * other)
        )

class FenwickTree:
    def __init__(self, n):
        self.n = n
        self.b = [0] * (self.n + 1)

    def sum(self, l, r):
        return self.get(r) - self.get(l)

    def add(self, i, v):
        i += 1
        while i <= self.n:
            self.b[i] += v
            i += i & -i

    def get(self, i):
        s = 0
        while i > 0:
            s += self.b[i]
            i -= i & -i
        return s

n, k = map(int, input().split())
a = list(map(int, input().split()))

b = [0] * n
c = [0] * n
ft = FenwickTree(2001)

for i, ai in enumerate(a):
    b[i] = ft.sum(ai+1, 2001)
    ft.add(ai, 1)

for i, ai in enumerate(a):
    c[i] = ft.sum(ai+1, 2001)

r = Mint(0)
for i in range(n):
    r += Mint(b[i]) * k + Mint(c[i]) * (k * (k-1) // 2)

print(r.v)
