# URL: https://atcoder.jp/contests/abc068/tasks/abc068_b

n = int(input())
print(1 << (len(bin(n))-3))
