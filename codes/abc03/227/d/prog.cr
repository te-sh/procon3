# URL: https://atcoder.jp/contests/abc227/tasks/abc227_d

require "big"

def solve(io)
  n, k = io.get(Int32, Int64)
  a = io.get_a(n, Int64)

  r = (1_i64..a.sum).rbsearch { |x| a.map { |ai| {ai, x}.min }.sum >= BigInt.new(k)*x }
  io.put r
end

require "procon"

solve(ProconIO.new)
