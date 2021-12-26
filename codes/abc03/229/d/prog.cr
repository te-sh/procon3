# URL: https://atcoder.jp/contests/abc229/tasks/abc229_d

def solve(io)
  s = io.get(String)
  k = io.get

  n = s.size
  t = s.chars.map { |si| si == '.' ? 1 : 0 }
  ct = CumulativeSum.new(t)

  io.put (0...n).map { |i| (0..n-i).rbsearch { |j| ct[i, j] <= k }.not_nil! }.max
end

require "procon"

require "procon/data_structure/cumulative_sum"

solve(ProconIO.new)
