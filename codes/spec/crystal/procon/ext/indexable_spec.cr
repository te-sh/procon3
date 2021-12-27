require "spec"
require "procon/ext/indexable"

module IndexableSpec
  describe "#rbsearch_index" do
    a = [1, 3, 4, 6, 7]
    it { a.rbsearch_index(&.< 10).should eq 4 }
    it { a.rbsearch_index(&.< 7).should eq 3 }
    it { a.rbsearch_index(&.< 4).should eq 1 }
    it { a.rbsearch_index(&.< -1).should eq nil }
  end
end
