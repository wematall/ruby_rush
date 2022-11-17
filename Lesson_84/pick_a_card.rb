#!/usr/bin/ruby
# encoding: utf-8

# Программа, которая выбирает произвольную карту игральной колоды, версия 1.

# массив с набором достоинств

values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

# массив с набором мастей

suits = ["Diamonds", "Hearts", "Clubs", "Spages"]

puts "#{values.sample} of #{suits.sample}"