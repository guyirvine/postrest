require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

task :example_db do
  db_name = 'postgrest_test'
  sql = %{
BEGIN;

CREATE USER postgrest_test_user WITH PASSWORD 'postgrest_test_pass';

CREATE TABLE test_tbl( id BIGINT, name VARCHAR );
INSERT INTO test_tbl( id, name ) VALUES ( 1, 'One' );
INSERT INTO test_tbl( id, name ) VALUES ( 2, 'Two' );

GRANT ALL ON test_tbl TO postgrest_test_user;
END;
}

  `createdb #{db_name} &&  psql -c "#{sql.delete("\n", '')}" #{db_name}`
end

task :redo_db do
  `dropdb postgrest_test`
  `dropuser postgrest_test_user`
  Rake::Task['example_db'].invoke
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
