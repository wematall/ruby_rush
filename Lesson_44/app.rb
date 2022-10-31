require "./bridge.rb"

puts "Go! Drive!"

sleep 1

puts "River suddenly!"

sleep 1

puts "bridge needed"

sleep 1

# build a new bridge
bridge = Bridge.new

# now we need open bridge

bridge.open

sleep 1

if !bridge.is_opened?
	puts bridge.open 
end

sleep 1

puts "Go go"

puts bridge.is_opened?.to_s



