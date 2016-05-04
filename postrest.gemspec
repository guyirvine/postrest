Gem::Specification.new do |s|
  s.name        = 'postrest'
  s.version     = '0.0.1'
  s.license     = 'LGPL-3.0'
  s.date        = '2016-05-04'
  s.summary     = 'postrest'
  s.description = 'zero to one for viewing and getting data from your db'
  s.authors     = ['Guy Irvine']
  s.email       = 'guy@guyirvine.com'
  s.files       = Dir['app.rb', '{lib}/**/*.rb', 'bin/*', 'LICENSE', '*.md']
  s.homepage    = 'http://rubygems.org/gems/postrest'
#  s.add_dependency('json')
#  s.add_dependency('fluiddb')
#  s.add_dependency('sinatra')
  s.executables << 'postrest'
end
