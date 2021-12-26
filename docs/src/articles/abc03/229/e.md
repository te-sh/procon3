---
title: "ABC #229 E"
url: https://atcoder.jp/contests/abc229/tasks/abc229_e
---
手順を最後から逆順に考えて, Union-Find を使う.

最初に $N$ 頂点のグラフを考え, 頂点 $i$ を追加するということを辺 $(i, j) \ (i \lt j)$ を追加することとする. このとき, 求める連結成分の数はグラフの連結成分の数から $i-1$ を引いたものである.
