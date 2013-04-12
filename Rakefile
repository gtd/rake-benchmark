require "bundler/gem_tasks"

desc "run the specs"
task :spec do
  puts `bundle exec ruby -Ispec spec/*_spec.rb`
end
task :default => :spec
