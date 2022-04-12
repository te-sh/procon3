# URL: https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_b

n, a, b = map(int, input().split())
s = input()

ca = 0
cb = 0

for c in s:
    if c == 'a':
        if ca + cb < a + b:
            print('Yes')
            ca += 1
        else:
            print('No')
    elif c == 'b':
        if ca + cb < a + b and cb < b:
            print('Yes')
            cb += 1
        else:
            print('No')
    else:
        print('No')
