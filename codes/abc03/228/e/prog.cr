# URL: https://atcoder.jp/contests/abc228/tasks/abc228_e

def solve(io)
  n, k, m = io.get3(Int64)

  if m % 998244353 == 0
    io.put 0
    exit
  end

  a = (Mint2.new(k) ** n).to_i
  io.put Mint1.new(m) ** a
end

require "procon"

require "procon/math/mod_int"
ModInt.new_type(Mint1, 998244353)
ModInt.new_type(Mint2, 998244352)

solve(ProconIO.new)
