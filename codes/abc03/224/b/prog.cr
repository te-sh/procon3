# URL: https://atcoder.jp/contests/abc224/tasks/abc224_b

def solve(io)
  h, w = io.get2
  a = io.get_m(h, w)

  (0...h).each do |i1|
    ((i1+1)...h).each do |i2|
      (0...w).each do |j1|
        ((j1+1)...w).each do |j2|
          if a[i1][j1]+a[i2][j2] > a[i2][j1]+a[i1][j2]
            io.put_e("No")
          end
        end
      end
    end
  end

  io.put("Yes")
end

require "procon"

solve(ProconIO.new)
