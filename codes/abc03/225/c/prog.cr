# URL: https://atcoder.jp/contests/abc225/tasks/abc225_c

def solve(io)
  n, m = io.get2
  b = io.get_m(n, m)

  (0...n).each do |i|
    io.put_e "No" unless b[i][0] == b[0][0] + i * 7

    (1...m).each do |j|
      io.put_e "No" unless b[i][j] == b[i][0] + j
    end

    io.put_e "No" unless (b[i][0] - 1) // 7 == (b[i][m-1] - 1) // 7
  end

  io.put "Yes"
end

require "procon"

solve(ProconIO.new)
