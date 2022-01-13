# URL: https://atcoder.jp/contests/abc226/tasks/abc226_b

def solve(io)
  n = io.get
  a = n.times.map do
    li = io.get
    io.get_a(li)
  end

  io.put a.uniq.size
end

require "procon"

solve(ProconIO.new)
