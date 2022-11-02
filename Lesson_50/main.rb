#!/usr/bin/ruby
# encoding: utf-8

require_relative 'game'



puts "Игра герои и злодеи. v.1"
puts ""

puts ""

sleep 1

slovo = ""
game = Game.new(slovo)

while slovo != "1"
	puts "Врага какого персонажа вы хотите узнать?"
	puts "Для выхода из программы, введите: 1"
	slovo = STDIN.gets.encode("UTF-8").chomp
	slovo = slovo.downcase

	if slovo == "1"
		abort "Выход из программы"
	end

	game.find_zlodey(slovo)

end

