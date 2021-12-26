# URL: https://atcoder.jp/contests/abc228/tasks/abc228_a

def solve(io)
  s, t, x = io.get3

  if s < t && (s...t).includes?(x) || s > t && ((0...t).includes?(x) || (s...24).includes?(x))
    io.put "Yes"
  else
    io.put "No"
  end
end

require "procon"

solve(ProconIO.new)
