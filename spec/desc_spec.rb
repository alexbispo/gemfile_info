require "spec_helper"
require "rake"
require "pathname"

describe "gemfile_info" do
  before do
    Rake.application = Rake::Application.new
    Rake.application.rake_require("tasks/gemfile_info", $LOAD_PATH)
    Rake::Task.define_task(:environment)
  end

  describe "desc" do
    it "should run" do
      Rails = MiniTest::Mock.new
      Rails.expect :root, Pathname.new([Dir.pwd, "/"].join(""))
      
      proc { Rake.application.invoke_task("gemfile_info:desc") }.must_output
    end
  end
end
