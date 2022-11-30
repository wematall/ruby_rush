#!/usr/bin/ruby
# encoding: utf-8

puts "Врага какого персонажа вы хотите узнать"

hero = STDIN.gets.encode("UTF-8").chomp

heros_antiheros = {
	"Бэтмен" => "Джокер",
	"Холмс" => "Мориарти",
	"Буратино" => "Карабас-Барабас",
	"Моцарт" => "Сальери"
}

if heros_antiheros.has_key?(hero)
	puts "Враг этого героя: #{heros_antiheros[hero]}"
else
	puts "Не удалось найти врага"
end

