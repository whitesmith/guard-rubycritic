require "test_helper"
require "guard/rubycritic/version"

describe Guard::RubycriticVersion do
  it "is defined" do
    Guard::RubycriticVersion::VERSION.wont_be_nil
  end
end
