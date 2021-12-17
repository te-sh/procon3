# :::::::::::::::::::: procon/io
#
# 競技プログラミング用の読み書きを行います.
#
class ProconIO
  #
  # コンストラクタ
  #
  def initialize(@ins : IO = STDIN, @outs : IO = STDOUT)
    @buf = IO::Memory.new("")
  end

  #
  # 型を指定して値を読み込みます
  #
  def get(k : T.class = Int32) forall T
    get_v(k)
  end

  # ---------- private methods

  private def get_v(k : String.class); get_token; end
  private def get_v(k : Int32.class); get_token.to_i32; end

  private def get_token
    loop do
      token = @buf.gets(' ', chomp: true)
      break token unless token.nil?
      @buf = IO::Memory.new(@ins.read_line)
    end
  end
end
# ::::::::::::::::::::
