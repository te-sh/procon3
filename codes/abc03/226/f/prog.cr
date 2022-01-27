# URL: https://atcoder.jp/contests/abc226/tasks/abc226_f

alias Pair = Tuple(Int32, Int32)

def solve(io)
  n, k = io.get2

  f = Fact(Mint).new(n)

  memo = {} of Pair => Array(Array(Pair))
  r = combi(n, n, memo).map do |a|
    b = a.map { |ai| (f.fact(ai[0]-1) ** ai[1]) // (f.fact(ai[0]) ** ai[1] * f.fact(ai[1])) }
    f.fact(n) * b.reduce { |a, b| a * b } * Mint.new(a.map(&.first).reduce { |a, b| a.lcm(b) }) ** k
  end

  io.put r.sum
end

def combi(r, m, memo) : Array(Array(Pair))
  return [[] of Pair] if r == 0
  return memo[{r, m}] if memo.has_key?({r, m})

  a = [] of Array(Pair)
  (2..m).reverse_each do |i|
    (1..r//i).reverse_each do |j|
      nr = r - i*j
      a += combi(nr, {nr, i-1}.min, memo).map { |ci| [{i, j}] + ci }
    end
  end
  a << [{1, r}]

  memo[{r, m}] = a
  return a
end

require "procon"

require "procon/math/fact"

require "procon/math/mod_int"
ModInt.new_type(Mint, 998244353)

solve(ProconIO.new)
