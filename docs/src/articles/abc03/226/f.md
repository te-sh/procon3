---
title: "ABC #226 F"
url: https://atcoder.jp/contests/abc226/tasks/abc226_f
---
置換を $b_i$ 個の長さ $a_i$ の巡回置換の積で表す. このときの $S(P)$ は $\{a_i\}$ の最小公倍数となる.

このような巡回置換の積で表せる置換の数は,

$$
N! \times \prod \frac{((a_i-1)!)^{b_i}}{(a_i!)^{b_i} b_i!}
$$

で表せる.

巡回置換の組み合わせは, {残りの数, 使える最大の長さ} の組をキーとしてメモ化再帰で求めることができる.
