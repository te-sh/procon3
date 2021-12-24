---
title: "ABC #230 E"
url: https://atcoder.jp/contests/abc230/tasks/abc230_e
---
$$
\left[ \frac{N}{i} \right] = k
$$

となる $i$ の個数を考える. これは

$$
k \leq \frac{N}{i} \lt k + 1
$$

となる $i$ であるので, $i$ は

$$
\frac{N}{k+1} \lt i \leq \frac{N}{k}
$$

となる. このような $i$ の個数は

$$
\floor{\frac{N}{k}} - \floor{\frac{N}{k+1}}
$$

個である. これを $k = 1, 2, \dots, \floor{\sqrt{N}}$ まで計算する. こうするとおおよそ $i \gt \sqrt{N}$ の範囲は計算できたので, 残りの範囲は愚直に計算する.
