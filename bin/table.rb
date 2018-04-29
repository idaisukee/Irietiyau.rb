base_dir = File.expand_path(File.join(File.dirname(__FILE__), ".."))
lib_dir  = File.join(base_dir, "lib")

require(File.join(lib_dir, 'Irietiyau.rb'))


puts Irietiyau.new.table
