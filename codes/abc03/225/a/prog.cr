# URL: https://atcoder.jp/contests/abc225/tasks/abc225_a

def solve(io)
  s = io.get(String)
  io.put s.chars.permutations.uniq.size
end

require "procon"

solve(ProconIO.new)
