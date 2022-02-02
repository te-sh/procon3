# URL: https://atcoder.jp/contests/abc225/tasks/abc225_e

require "big"

def solve(io)
  n = io.get
  f = records(F, io.get2_t(n))

  f.sort_by! { |fi| [fi.r, fi.x] }

  a = Array.new(n, 0)
  b = Array.new(n, 0); b[0] = 1

  (1...n).each do |i|
    a[i] = {a[i-1], b[i-1]}.max
    j = (0...i).rbsearch { |j| f[j].r <= f[i].l }
    if j.nil?
      b[i] = 1
    else
      b[i] = {a[j], b[j]}.max + 1
    end
  end

  io.put({a[-1], b[-1]}.max)
end

class F
  def initialize(@x : Int32, @y : Int32)
    @l = BigRational.new(@x-1, @y)
    @r = @y > 1 ? BigRational.new(@x, @y-1) : BigRational.new(10**9+1, 1)
  end

  getter x, y, l, r
end

require "procon"

require "procon/rbsearch"

solve(ProconIO.new)
