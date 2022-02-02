---
title: "ABC #225 E"
url: https://atcoder.jp/contests/abc225/tasks/abc225_e
---
原点から見るとフは範囲として扱える. $i$ 個目のフの範囲を

$$
(l_i, r_i) = \left( \frac{x_i-1}{y_i}, \frac{x_i}{y_i-1} \right)
$$

とする. これを $r_i$ で昇順にソートする. ただし, $r_i$ が等しい場合は $x_i$ の降順でソートする.

あとは DP である. $i$ 個目まで見たときに $i$ 個目を残さないときの見える最大の個数を $A_i$, $i$ 個目を残すときの見える最大の個数を $B_i$ とすると,

$$
\begin{align*}
A_i &= \max \{ A_{i-1}, B_{i-1} \} \\
B_i &= \max \{ A_j, B_j \} + 1
\end{align*}
$$

となる. ただし, $j$ は $r_j \leq l_i$ を満たす最大の $j$ である.
