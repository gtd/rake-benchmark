require 'spec_helper'

describe Rake::Benchmark do
  before do
    @rake = Rake::Application.new
    Rake.application = @rake
    Rake.application.rake_require "tasks/benchmarked"
  end

  it "can output benchmark information" do
    capture_stdout do
      @rake['benchmarked'].execute
    end.must_match '  benchmarked -->   '
  end
end
