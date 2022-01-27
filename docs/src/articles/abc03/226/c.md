---
title: "ABC #226 C"
url: https://atcoder.jp/contests/abc226/tasks/abc226_c
---
グラフで考える.

技 $i$ を覚えるために技 $j$ を先に覚えなければならないとき, 頂点 $i$ から頂点 $j$ に有向辺を引く.

このとき, 頂点 $N$ からたどれる頂点が技 $N$ を覚えるために必要な技である. これを BFS でたどる.