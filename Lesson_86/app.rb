#!/usr/bin/ruby
# encoding: utf-8

# Символы мастей
# Улучшите программу pick_a_card, сделав так, чтобы вместо слова 
# «Бубей» или «of Diamonds» выводился Unicode символ соответствующей масти: ♦, ♠, ♥ или ♣.

# Пример результата:

# > ruby pick_a_card.rb
# Q♠
# Закоммитьте изменения в репозиторий на github.

# pick a card with symbols v.2

# Программа, которая выбирает произвольную карту игральной колоды, версия 2.


# array of values
values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']


# array of suits
# suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades']

# suits unicode white
# suits = ["U+2662", "U+2661", "U+2667", "U+2664"]

# suits unicode black
# suits = ['U+2666', 'U+2665', 'U+2663', 'U+2660']

# print random value and random suit

suits = ['♦', '♠', '♥ ', '♣']

puts "#{values.sample}#{suits.sample}"