# URL: https://atcoder.jp/contests/abc057/tasks/abc057_b

n, m = map(int, input().split())
ab = [tuple(map(int, input().split())) for _ in range(n)]
cd = [tuple(map(int, input().split())) for _ in range(m)]

for abi in ab:
    md = 10**9
    mj = -1
    for j, cdj in enumerate(cd):
        d = abs(abi[0]-cdj[0]) + abs(abi[1]-cdj[1])
        if d < md:
            md = d
            mj = j
    print(mj+1)
