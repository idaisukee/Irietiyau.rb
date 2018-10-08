base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")

require(File.join(lib_dir, 'Irietiyau.rb'))

puts '--- hsh'
puts Irietiyau.new.hsh
puts '--- items'
puts Irietiyau.new.items
puts '--- sort'
puts Irietiyau.new.sort
puts '--- simple'
puts Irietiyau.new.simple
puts '--- table'
puts Irietiyau.new.table
