require "test_helper"
require "guard/rubycritic"

describe Guard::Rubycritic do
  before do
    @rubycritic = Guard::Rubycritic.new
  end

  describe "Guard unused methods" do
    it "must do nothing" do
      @rubycritic.reload.must_be_nil
      @rubycritic.run_all.must_be_nil
      @rubycritic.run_on_changes([]).must_be_nil
      @rubycritic.run_on_removals([]).must_be_nil
    end
  end
end
