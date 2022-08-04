# URL: https://atcoder.jp/contests/abc224/tasks/abc224_f

def solve(io)
  s = io.get(String)
  n = s.size

  r = Mint.zero
  s.split(//).map(&.to_i).each_with_index do |si, i|
    q = Mint.new(2) ** (n-2) * (Mint.new(5) ** (n-i-1) - 1) // 4 + Mint.new(10) ** (n-i-1) * Mint.new(2) ** i
    r += q * si
  end

  io.put(r)
end

require "procon"

require "procon/math/mod_int"
ModInt.new_type(Mint, 998244353)

solve(ProconIO.new)
