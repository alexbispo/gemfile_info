$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
$LOAD_PATH.unshift File.expand_path("../../lib/tasks/")

require "gemfile_info"

require "minitest/autorun"
