#!/usr/bin/ruby
# encoding: utf-8


require_relative "films.rb"

film = Films.new

puts "Сегодня предлагается к просмотру фильм: "

puts film.random_film()

