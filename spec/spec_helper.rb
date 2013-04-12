$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rake/benchmark'
begin; require 'turn/autorun'; rescue LoadError; end
Turn.config do |c|
  c.natural = true
  c.ansi = true
  c.format = :pretty
end

def capture_stdout
  buffer = StringIO.new
  $stdout = buffer
  yield
  $stdout = STDOUT
  buffer.rewind
  buffer.string
end

