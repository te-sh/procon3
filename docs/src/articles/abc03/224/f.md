---
title: "ABC #224 F"
url: https://atcoder.jp/contests/abc224/tasks/abc224_f
---
$S_i$ が計算式の中で下位から数えて $j$ 桁目の数字として扱われる組み合わせの数を考える.

$1 \leq j < \abs{S}-i$ のときは $\abs{S}-1$ 個の間のうち $j$ 個は固定されるので,

$$
2^{\abs{S}-j-1}
$$

個の組み合わせがあることになる. また, $j = \abs{S}-i+1$ のときは $\abs{S}-1$ 個の間のうち $j-1$ 個は固定されるので,

$$
2^{i-1}
$$

個の組み合わせがあることになる.

よって, $S_i$ が和に寄与する分は,

$$
\begin{align*}
& S_i \left( \sum_{j=1}^{\abs{S}-i} 10^{j-1} 2^{\abs{S}-j-1} + 10^{\abs{S}-i} 2^{i-1} \right) \\
&= S_i \left( 2^{\abs{S}-2} \sum_{j-1}^{\abs{S}-i} \left(\frac{10}{2}\right)^{j-1} + 10^{\abs{S}-i} 2^{i-1} \right) \\
&= S_i \left( 2^{\abs{S}-2} \frac{5^{\abs{S}-i}-1}{4} + 10^{\abs{S}-i} 2^{i-1} \right)
\end{align*}
$$

となる.
