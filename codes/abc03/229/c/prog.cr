# URL: https://atcoder.jp/contests/abc229/tasks/abc229_c

def solve(io)
  n, w = io.get2
  c = records(Cheeze, io.get_t(n, Int64, Int32))

  c.sort_by!(&.a).reverse!
  s = 0_i64
  c.each do |ci|
    break if w == 0
    d = {w, ci.b}.min
    s += ci.a * d
    w -= d
  end

  io.put s
end

record Cheeze, a : Int64, b : Int32

require "procon"

solve(ProconIO.new)
