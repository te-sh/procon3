---
title: "ABC #229 D"
url: https://atcoder.jp/contests/abc229/tasks/abc229_d
---
位置 $[i, j]$ の間に `.` が $K$ 個以下であれば操作後に `X` を $j - i + 1$ 個連続させることができる. `.` の個数は累積和を計算しておく.

$i$ を固定したときの最大の $j$ を二分探索で求め, これをすべての $i$ で計算する.
