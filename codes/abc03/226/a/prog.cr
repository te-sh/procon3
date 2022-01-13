# URL: https://atcoder.jp/contests/abc226/tasks/abc226_a

def solve(io)
  x = io.get(String)
  a, b = x[..-5].to_i, x[-3].to_i
  io.put b < 5 ? a : a+1
end

require "procon"

solve(ProconIO.new)
