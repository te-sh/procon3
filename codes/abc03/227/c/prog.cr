# URL: https://atcoder.jp/contests/abc227/tasks/abc227_c

def solve(io)
  n = io.get(Int64)

  r = 0_i64
  (1_i64..).each do |a|
    break if a*a*a > n
    (a..).each do |b|
      break if a*b*b > n
      r += n//(a*b) - b + 1
    end
  end

  io.put r
end

require "procon"

solve(ProconIO.new)
