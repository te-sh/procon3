# URL: https://atcoder.jp/contests/abc227/tasks/abc227_b

def solve(io)
  t = Array.new(1001, false)

  (1..1000).each do |a|
    (1..1000).each do |b|
      u = a*b*4 + a*3 + b*3
      t[u] = true if u <= 1000
    end
  end

  n = io.get
  s = io.get_a(n)
  io.put s.count { |si| !t[si] }
end

require "procon"

solve(ProconIO.new)
