# URL: https://atcoder.jp/contests/abc224/tasks/abc224_e

def solve(io)
  h, w, n = io.get3
  q = io.get3_t(n)
  p = q.map_with_index { |t, i| Point.new(*t, i) }
  p.sort_by!(&.a)

  ar = Array.new(p.map(&.r).max+1) { [] of Point }
  ac = Array.new(p.map(&.c).max+1) { [] of Point }
  p.each do |pi|
    ar[pi.r] << pi
    ac[pi.c] << pi
  end

  hr = Array.new(p.map(&.r).max+1) { {} of Int32 => Int32 }
  hc = Array.new(p.map(&.c).max+1) { {} of Int32 => Int32 }

  r = Array.new(n, 0)
  p.reverse.each do |pi|
    unless hr[pi.r].has_key?(pi.a)
      rr = 0
      br = ar[pi.r]
      brj = br.bsearch_index { |qi| qi.a > pi.a }
      unless brj.nil?
        (brj...br.size).each do |j|
          break if br[j].a != br[brj].a
          max_u(rr, r[br[j].i]+1)
        end
      end
      hr[pi.r][pi.a] = rr
      max_u(r[pi.i], rr)
    else
      max_u(r[pi.i], hr[pi.r][pi.a])
    end

    unless hc[pi.c].has_key?(pi.a)
      rc = 0
      bc = ac[pi.c]
      bcj = bc.bsearch_index { |qi| qi.a > pi.a }
      unless bcj.nil?
        (bcj...bc.size).each do |j|
          break if bc[j].a != bc[bcj].a
          max_u(rc, r[bc[j].i]+1)
        end
      end
      hc[pi.c][pi.a] = rc
      max_u(r[pi.i], rc)
    else
      max_u(r[pi.i], hc[pi.c][pi.a])
    end
  end

  io.put_c(r)
end

record Point, r : Int32, c : Int32, a : Int32, i : Int32

require "procon"

solve(ProconIO.new)
