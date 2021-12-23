require "spec"
require "procon/util"

module UtilSpec
  describe "#min_u" do
    it { a = 1; min_u(a, 2); a.should eq 1 }
    it { a = 1; min_u(a, 0); a.should eq 0 }
  end

  describe "#max_u" do
    it { a = 1; max_u(a, 2); a.should eq 2 }
    it { a = 1; max_u(a, 0); a.should eq 1 }
  end

  record Rec, a : Int32, b : String, c : Int32

  describe "#zip_record" do
    a = [1, 2]
    b = ["a", "b"]
    c = [3, 4]
    c = zip_record(Rec, a, b, c)
    it { c[0].should eq Rec.new(1, "a", 3) }
    it { c[1].should eq Rec.new(2, "b", 4) }
  end
end
