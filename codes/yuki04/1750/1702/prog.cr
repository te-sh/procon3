# URL: https://yukicoder.me/problems/no/1702

def solve(io)
  n = io.get
  s = io.get(String)

  u = "yukicoder"
  m = u.size

  dp = Array.new_md(n+1, m+1, 2, Mint.new(0))
  dp[0][0][0] = Mint.new(1)

  (1..n).each do |i|
    (0..m).each do |j|
      dp[i][j][0] = dp[i-1][j][0]
      dp[i][j][1] = dp[i-1][j][1]

      if j > 0
        if s[i-1] == '?'
          dp[i][j][1] += dp[i-1][j-1][0]
        elsif s[i-1] == u[j-1]
          dp[i][j][0] += dp[i-1][j-1][0]
          dp[i][j][1] += dp[i-1][j-1][1]
        end
      end
    end
  end

  io.put dp[n][m].sum
end

require "procon"

require "procon/math/mod_int"
ModInt.new_type(Mint, 10**9+7)

solve(ProconIO.new)
