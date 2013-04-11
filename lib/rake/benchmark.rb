require "rake/benchmark/version"
require 'rake'
require 'benchmark'

class Rake::Task
  def execute_with_benchmark(*args)
    bench = Benchmark.measure do
      execute_without_benchmark(*args)
    end
    puts "  #{name} --> #{bench}"
  end
  alias_method :execute_without_benchmark, :execute
  alias_method :execute, :execute_with_benchmark
end
