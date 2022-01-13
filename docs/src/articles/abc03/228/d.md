---
title: "ABC #228 D"
url: https://atcoder.jp/contests/abc228/tasks/abc228_d
---
合成関数を $\min$ とするセグメントツリーに $\{ A_i \}$ を保持する.

$t_i = 1$ のとき, 区間 $[x_i \bmod N, j]$ の最小値が $-1$ となる最小の $j$ を二分探索で探す. $j$ が見つかればその位置の値を更新する. 見つからなければ区間 $[1, j]$ の最小値が $-1$ となる最小の $j$ を探し, その位置の値を更新する. $2^{20} \gt 2 \times 10^5$ なのでこの2回の探索のどちらかで $j$ は必ず見つかる.