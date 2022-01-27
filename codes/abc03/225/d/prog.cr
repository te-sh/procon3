# URL: https://atcoder.jp/contests/abc225/tasks/abc225_d

def solve(io)
  n, q = io.get2
  cars = Array.new(n+1) { Car.new }

  q.times do
    t = io.get
    case t
    when 1
      x, y = io.get2
      cars[x].back = y
      cars[y].front = x
    when 2
      x, y = io.get2
      cars[x].back = 0
      cars[y].front = 0
    when 3
      x = io.get

      f = [] of Int32
      i = x
      loop do
        break if cars[i].front == 0
        i = cars[i].front
        f << i
      end

      b = [] of Int32
      i = x
      loop do
        break if cars[i].back == 0
        i = cars[i].back
        b << i
      end

      c = f.reverse + [x] + b
      io.put_a [c.size], c
    end
  end
end

class Car
  def initialize
    @front = @back = 0
  end

  property front, back
end

require "procon"

solve(ProconIO.new)
