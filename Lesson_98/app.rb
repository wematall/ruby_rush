#!/usr/bin/ruby
# encoding: utf-8

require_relative './parent.rb'
require_relative './child.rb'

papa = Parent.new("Василий Игоревич")

masha = Child.new("Маша")
kolya = Child.new("Коля")

puts "#{papa.name} послушный: #{papa.obedient}"

puts "#{masha.name} послушная: #{masha.obedient}"

puts "#{kolya.name} послушный: #{kolya.obedient}"