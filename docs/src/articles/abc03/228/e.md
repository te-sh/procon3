---
title: "ABC #228 E"
url: https://atcoder.jp/contests/abc228/tasks/abc228_e
---
$m = 998244353$ とする.

数列の種類数 $A$ は $A=K^N$ である.

点数のつけかたの数は $M^A$ である.

よって求める値は $M^A \bmod m$ である.

まず $M = mk$ のときは $0 $ である.

次に $M \neq mk$ のときはフェルマーの小定理から $M^{m-1} \bmod m = 1$ となるので, $M^{A \bmod (m-1)} \bmod m$ を計算すればいい.
