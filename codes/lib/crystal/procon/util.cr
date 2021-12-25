# :::::::::::::::::::: procon/util
#
# a = {a, b}.min を計算します
#
macro min_u(a, b)
  {{a}} = { {{a}}, {{b}} }.min
end

#
# a = {a, b}.max を計算します
#
macro max_u(a, b)
  {{a}} = { {{a}}, {{b}} }.max
end

#
# 複数の配列を zip でまとめて record の配列に入れます
#
macro zip_record(rec, a, *b)
  {{a}}.zip(*{{b}}).map { |v| {{rec}}.new(*v) }
end
# ::::::::::::::::::::
