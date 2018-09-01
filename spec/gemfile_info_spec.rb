require "spec_helper"

describe GemfileInfo do
  it "should have a version number" do
    expect(::GemfileInfo::Version::STRING).wont_be_nil
  end
end
