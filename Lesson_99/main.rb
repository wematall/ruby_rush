#!/usr/bin/ruby
# encoding: utf-8

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

film_1 = Film.new(price: 290, amount: 4)

puts "Фильм Леон стоит: #{film_1.price} руб."