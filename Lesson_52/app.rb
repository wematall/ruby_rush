#!/usr/bin/ruby
# encoding: utf-8

require_relative "film"
require_relative "person"


person_1 = Person.new("Сергей", "Юрьевич", 36)
person_2 = Person.new("Юлия", "Сергеевна", 27)
person_3 = Person.new("Дмитрий", "Иванович", 54)


film_1 = Film.new("Челюсти", "Стивен Спилберг")
film_2 = Film.new("Список Шиндлера", "Стивен Спилберг")
film_3 = Film.new("Парк Юрского периода", "Стивен Спилберг")

person_1.set_favorite_movie = film_1
person_2.set_favorite_movie = film_2
person_3.set_favorite_movie = film_3



puts person_1.get_full_name
puts "С любимым фильмом: " + person_1.get_favorite_movie.get_film_name 

puts person_2.get_full_name
puts "С любимым фильмом: " + person_2.get_favorite_movie.get_film_name

puts person_3.get_full_name
puts "С любимым фильмом: " + person_3.get_favorite_movie.get_film_name

