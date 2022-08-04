# URL: https://atcoder.jp/contests/abc223/tasks/abc223_a

def solve(io)
  x = io.get
  if x >= 100 && x % 100 == 0
    io.put "Yes"
  else
    io.put "No"
  end
end

require "procon"

solve(ProconIO.new)
