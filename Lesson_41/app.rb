#!/usr/bin/ruby
# encoding: utf-8

# programm code here
require "./methods.rb"

cls

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Игра виселица. Версия 1.\n\n"

sleep 1


letters = get_letters

errors = 0
bad_letters = []
good_letters = []

while errors < 7 do 

  print_status(letters, good_letters, bad_letters, errors)

  puts "\nВведите след. букву"

  user_input = get_user_input

  # todo
  result = check_result(user_input, letters, good_letters, bad_letters)

  if (result == -1)
    errors += 1
  elsif (result == 1)
    break
  end

end

print_status(letters, good_letters, bad_letters,errors)
