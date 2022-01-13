---
title: "ABC #227 F"
url: https://atcoder.jp/contests/abc227/tasks/abc227_f
---
$K$ 番目の数 $x$ を決める.

このとき, $(i, j)$ にたどり着くまでに $x$ 以上のマスを $k$ 個通ったときの, $x$ 以上の数の合計を $dp[i][j][k]$ とすると,

$$
dp[i][j][k] =
\begin{cases}
\min \{ dp[i-1][j][k], dp[i][j-1][k] \} & (A_{i,j} \lt x) \\
\min \{ dp[i-1][j][k-1], dp[i][j-1][k-1] \} + A_{i,j} & (A_{i,j} \geq x)
\end{cases}
$$

となる. これをすべての $x$ $(\{ A_{i,j} \})$ について計算して, $dp[H][W][K]$ の最小値を求める.
