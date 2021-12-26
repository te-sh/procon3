# URL: https://atcoder.jp/contests/abc230/tasks/abc230_c

def solve(io)
  n, a, b = io.get3(Int64)
  p, q, r, s = io.get4(Int64)

  g = (p..q).map { |i| (r..s).map { |j| (i-a).abs == (j-b).abs ? '#' : '.' } }
  io.put_c g.map(&.join)
end

require "procon"

solve(ProconIO.new)
