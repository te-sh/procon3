# URL: https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_b

h, w = map(int, input().split())

if h == 1 or w == 1:
    print(1)
else:
    print((h*w+1)//2)
