# Rake::Benchmark

Intercepts all calls to `Rake::Task.execute` and wraps them with `Benchmark`, outputting the timing informtion after the rake task completes.

## Installation

Add it to your Gemfile:

    gem 'rake-benchmark', require: false

And install it:

    $ bundle

Then, require it in your `Rakefile` like this:

    require 'rake/benchmark'


## Example Rakefile
    
````ruby
#!/usr/bin/env rake
require 'rake/benchmark'

desc "A sleepy rake task"
task :sleepy do
  puts "zzZZZzz"
  sleep(3)
end
````

#### Outputs:

    $ rake sleepy
    zzZZZzz
      sleepy -->   0.000000   0.000000   0.000000 (  3.001075)


## Project Status

- Build: [![Build Status](https://secure.travis-ci.org/styleseek/rake-benchmark.png?branch=master)](https://travis-ci.org/styleseek/rake-benchmark)
- Code Quality: [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/styleseek/rake-benchmark)
- Dependencies: [![Dependency Status](https://gemnasium.com/styleseek/rake-benchmark.png)](https://gemnasium.com/styleseek/rake-benchmark)


## Special Thanks

Inspired by a [blog post](http://darwinweb.net/articles/benchmarking-rake-tasks-and-trivial-rails-testing-) by [Gabe da Silveira](https://github.com/gtd).


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
