require "spec"
require "procon/ext/range"

module RangeSpec
  describe "#rbsearch" do
    it { (0..5).rbsearch(&.< 7).should eq 5 }
    it { (0...5).rbsearch(&.< 7).should eq 4 }
    it { (0...5).rbsearch(&.< 4).should eq 3 }
    it { (0...5).rbsearch(&.< -1).should eq nil }
  end
end
