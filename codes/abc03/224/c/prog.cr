# URL: https://atcoder.jp/contests/abc224/tasks/abc224_c

def solve(io)
  n = io.get
  x, y = io.get2_c(n, Int64)

  c = 0
  (0...n).each do |i|
    ((i+1)...n).each do |j|
      ((j+1)...n).each do |k|
        x2, y2 = x[j]-x[i], y[j]-y[i]
        x3, y3 = x[k]-x[i], y[k]-y[i]
        if x2 == 0 || x3 == 0
          c += 1 unless x2 == 0 && x3 == 0
        else
          c += 1 unless x3*y2 == x2*y3
        end
      end
    end
  end

  io.put(c)
end

require "procon"

solve(ProconIO.new)
