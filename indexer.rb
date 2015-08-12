# File.open("ebay-index.json")

require 'json'

my_index = Hash.new

i = 0 
v = 1

17989.times do 
	obj = {
		v => i
	}
my_index.merge!(obj)	

	i += 1
	v += 1
end

ind = my_index.to_json

puts ind



