---
title: "ABC #227 C"
url: https://atcoder.jp/contests/abc227/tasks/abc227_C
---
最初に $A$ を $1$ から順に試す. ただし, $A^3 \gt N$ ならば打ち切る.

次に $B$ を $A$ から順に試す. ただし, $AB^2 \gt N$ ならば打ち切る.

このときの $C$ は $B$ 以上 $\floor{N/AB}$ 以下なので個数は $\floor{N/AB}-B+1$ 個である.
