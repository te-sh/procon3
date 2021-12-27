# :::::::::::::::::::: procon/ext/indexable
module Indexable(T)
  #
  # block の結果が true となる最大のインデックスを返します
  #
  def rbsearch_index(&block : T, Int32 -> _)
    s = self.bsearch_index { |v, i| !block.call(v, i) }
    if s.nil?
      self.size
    elsif s == 0
      nil
    else
      s - 1
    end
  end
end
# ::::::::::::::::::::
