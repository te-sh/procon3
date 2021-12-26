# URL: https://atcoder.jp/contests/abc229/tasks/abc229_b

def solve(io)
  a, b = io.get2(Int64)

  ad, bd = a.digits, b.digits
  if (0...{ad.size, bd.size}.min).any? { |i| ad[i] + bd[i] >= 10 }
    io.put "Hard"
  else
    io.put "Easy"
  end
end

require "procon"

solve(ProconIO.new)
