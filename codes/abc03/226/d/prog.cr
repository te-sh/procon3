# URL: https://atcoder.jp/contests/abc226/tasks/abc226_d

def solve(io)
  n = io.get
  p = records(Point, io.get2_t(n))

  r = [] of Point
  (0...n).each do |i|
    (0...n).each do |j|
      next if i == j
      c = p[j].x - p[i].x
      d = p[j].y - p[i].y
      if c == 0
        r << Point.new(0, d // d.abs)
      elsif d == 0
        r << Point.new(c // c.abs, 0)
      else
        g = c.abs.gcd(d.abs)
        r << Point.new(c // g, d // g)
      end
    end
  end

  io.put r.uniq.size
end

record Point, x : Int32, y : Int32

require "procon"

solve(ProconIO.new)
