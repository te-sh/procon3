# URL: https://atcoder.jp/contests/abc229/tasks/abc229_f

def solve(io)
  n = io.get
  a = io.get_a(n, Int64)
  b = io.get_a(n, Int64)

  dp = Array.new_md(n, 2, 2, 0_i64)
  dp[0][0][0] = a[0]
  dp[1][0][0] = a[0] + a[1] + b[0]
  dp[1][1][0] = a[1]
  dp[1][0][1] = a[0]
  dp[1][1][1] = b[0]

  (2...n).each do |i|
    (0..1).each do |j|
      dp[i][j][0] = {dp[i-1][j][1], dp[i-1][j][0] + b[i-1]}.min + a[i]
      dp[i][j][1] = {dp[i-1][j][0], dp[i-1][j][1] + b[i-1]}.min
    end
  end

  io.put({dp[-1][0][0] + b[-1], dp[-1][0][1], dp[-1][1][0], dp[-1][1][1] + b[-1]}.min)
end

require "procon"

solve(ProconIO.new)
