# URL: https://atcoder.jp/contests/abc227/tasks/abc227_f

def solve(io)
  h, w, k = io.get3
  a = io.get_m(h, w, Int64)

  x = a.flatten.uniq
  r = 10_i64**12

  x.each do |xi|
    dp = Array.new_md(h, w, k+1, 10_i64**12)

    dp[0][0][0] = 0 if a[0][0] <= xi
    dp[0][0][1] = a[0][0] if a[0][0] >= xi

    h.times do |i|
      w.times do |j|
        (0..k).each do |m|
          if a[i][j] <= xi
            min_u(dp[i][j][m], dp[i-1][j][m]) if i > 0
            min_u(dp[i][j][m], dp[i][j-1][m]) if j > 0
          end
          if a[i][j] >= xi && m > 0
            min_u(dp[i][j][m], dp[i-1][j][m-1] + a[i][j]) if i > 0
            min_u(dp[i][j][m], dp[i][j-1][m-1] + a[i][j]) if j > 0
          end
        end
      end
    end

    min_u(r, dp[h-1][w-1][k])
  end

  io.put r
end

require "procon"

solve(ProconIO.new)
