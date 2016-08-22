require "test_helper"
require "guard/rubycritic/version"

describe Guard::RubyCriticVersion do
  it "is defined" do
    Guard::RubyCriticVersion::VERSION.wont_be_nil
  end
end
