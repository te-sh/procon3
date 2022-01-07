# URL: https://atcoder.jp/contests/abc228/tasks/abc228_f

def solve(io)
  h, w, h1, w1, h2, w2 = io.get6
  a = io.get_m(h, w, Int64)

  h2 = h2.clamp(..h1)
  w2 = w2.clamp(..w1)

  b = Array.new_md(h, w, 0_i64)
  b[0][0] = a[0][0]
  (1...h).each do |i|
    b[i][0] = b[i-1][0] + a[i][0]
  end
  (1...w).each do |j|
    b[0][j] = b[0][j-1] + a[0][j]
  end
  (1...h).each do |i|
    (1...w).each do |j|
      b[i][j] = a[i][j] + b[i-1][j] + b[i][j-1] - b[i-1][j-1]
    end
  end

  c = Array.new_md(h, w, 0_i64)
  (0..h-h1).each do |i|
    (0..w-w1).each do |j|
      c[i][j] = b[i+h1-1][j+w1-1]
      c[i][j] -= b[i-1][j+w1-1] if i > 0
      c[i][j] -= b[i+h1-1][j-1] if j > 0
      c[i][j] += b[i-1][j-1] if i > 0 && j > 0
    end
  end

  d = Array.new_md(h, w, 0_i64)
  (0..h-h2).each do |i|
    (0..w-w2).each do |j|
      d[i][j] = b[i+h2-1][j+w2-1]
      d[i][j] -= b[i-1][j+w2-1] if i > 0
      d[i][j] -= b[i+h2-1][j-1] if j > 0
      d[i][j] += b[i-1][j-1] if i > 0 && j > 0
    end
  end

  dc = d.map { |di| SegmentTree.new(di, :max) }

  m = 0_i64
  (0..w-w1).each do |j|
    sm = SlideMax.new
    (0..h1-h2-1).each do |i|
      sm.enter(dc[i][j, w1-w2+1])
    end
    (0..h-h1).each do |i|
      sm.enter(dc[i+h1-h2][j, w1-w2+1])
      max_u(m, c[i][j] - sm.value)
      sm.leave(dc[i][j, w1-w2+1])
    end
  end

  io.put m
end

class SlideMax
  def initialize
    @q = Deque(Int64).new
  end

  def enter(v)
    while !@q.empty? && @q.last < v
      @q.pop
    end
    @q.push(v)
  end

  def leave(v)
    if !@q.empty? && @q.first == v
      @q.shift
    end
  end

  def value
    @q.first
  end
end

require "procon"

require "procon/data_structure/segment_tree"

solve(ProconIO.new)
