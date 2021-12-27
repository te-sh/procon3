# :::::::::::::::::::: procon/ext/range
struct Range(B, E)
  #
  # block の結果が true となる最大の値を返します
  #
  def rbsearch(&block : B | E -> _)
    from = self.begin
    to = self.end

    if from.is_a?(Int::Primitive) && to.is_a?(Int::Primitive)
      s = self.bsearch { |v| !block.call(v) }
      if s.nil?
        if self.excludes_end?
          to - 1
        else
          to
        end
      elsif s == from
        nil
      else
        s - 1
      end
    end
  end
end
# ::::::::::::::::::::
