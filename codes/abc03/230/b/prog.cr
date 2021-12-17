# URL: https://atcoder.jp/contests/abc230/tasks/abc230_b

def solve(io)
  s = io.get(String)
  n = s.size
  t = "oxx" * 5
  puts (0..2).any? { |i| s == t[i, n] } ? "Yes" : "No"
end

require "procon"

solve(ProconIO.new)
