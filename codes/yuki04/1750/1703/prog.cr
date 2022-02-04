# URL: https://yukicoder.me/problems/no/1703

def solve(io)
  n, m, q = io.get3

  c = Array.new_md(n+1, m+1, false)
  q.times do
    ai, bi = io.get2
    c[ai][bi] = true
  end

  dp = Array.new_md(n+1, m+1, 0)
  (n+1).times do |i|
    (m+1).times do |j|
      max_u(dp[i][j], dp[i-1][j]) if i > 0
      max_u(dp[i][j], dp[i][j-1]) if j > 0
      max_u(dp[i][j], dp[i-1][j-1]+1) if i > 0 && j > 0 && c[i][j]
    end
  end

  io.put dp[n][m]
end

require "procon"

solve(ProconIO.new)
