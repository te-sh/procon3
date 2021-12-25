# URL: https://atcoder.jp/contests/abc230/tasks/abc230_f

def solve(io)
  n = io.get
  a = io.get_a(n, Int64)

  b = Array.new(n, a[0])
  (1...n).each do |i|
    b[i] = b[i-1] + a[i]
  end

  dps = Mint.zero
  dp = {} of Int64 => Mint
  (0...n).each do |i|
    dpn = dps + 1
    dps += dpn
    dps -= dp[b[i]] if dp.has_key?(b[i])
    dp[b[i]] = dpn
  end

  puts dp[b.last]
end

require "procon"

require "procon/math/mod_int"
ModInt.new_type(Mint, 998244353)

solve(ProconIO.new)
