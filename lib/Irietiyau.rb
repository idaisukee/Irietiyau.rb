require 'json'
require 'date'

class Irietiyau

	attr_reader :hsh
	
	def self::read
		file = '/tmp/Irietiyau.json'
		io = File.read(file)
		hash = JSON.parse(io)
	end

	def initialize
		@hsh = Irietiyau::read
	end

	def items
		self.hsh['items']
	end

	def sort
		self.items.sort_by {|i|
			i['start']['dateTime']
		}
	end

	def simple
		self.sort.map do |i|
			start = i['start']['dateTime']
			rest = (DateTime.parse(start) - DateTime.now).to_f
			rest_pretty = sprintf('%#+15.3f', rest)
			[start, rest_pretty, i['summary']]
		end
	end

	def table
		self.simple.map do |i|
			i.join(' ')
		end.join("\n")
	end
end
