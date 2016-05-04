require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

task :build do
  `gem build postrest.gemspec`
end

task :install do
  Rake::Task['build'].invoke
  cmd = "sudo gem install ./#{Dir.glob('postrest*.gem').sort.pop}"
  p "cmd: #{cmd}"
  `#{cmd}`
  p "gem push ./#{Dir.glob('postrest*.gem').sort.pop}"
end

desc 'Run tests'
task :default => :install
