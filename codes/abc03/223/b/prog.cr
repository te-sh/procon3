# URL: https://atcoder.jp/contests/abc223/tasks/abc223_b

def solve(io)
  s = io.get(String)
  n = s.size

  r = [] of String
  n.times do
    s = s[1..-1] + s[0]
    r << s
  end

  io.put r.min
  io.put r.max
end

require "procon"

solve(ProconIO.new)
