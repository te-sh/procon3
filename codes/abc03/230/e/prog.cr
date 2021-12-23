# URL: https://atcoder.jp/contests/abc230/tasks/abc230_e

def solve(io)
  n = io.get(Int64)

  s = 0_i64
  t = Math.isqrt(n)
  (1_i64..t).each do |k|
    s += k * (n // k - n // (k+1))
  end

  (1_i64..n).each do |i|
    k = n // i
    break if k <= t
    s += k
  end

  puts s
end

require "procon"

solve(ProconIO.new)
