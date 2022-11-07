#!/usr/bin/ruby
# encoding: utf-8

# Математические константы
# В Ruby есть встроенная библиотека Math, 
# которая помогает совершать всякие полезные математические операции, 
# которые нам рассказывали ещё в школе: синусы, косинусы.

# С помощью модуля Math выведите на экран значения двух фундаментальных констант:
#  длины окружности к её диаметру pi и 
#  основание натурального логарифма e, 
#  а после этого убедитесь, 
#  что сумма синуса + косинуса угла pi равны -1 (выведите сумму на экран).

puts Math::PI
puts Math::E 


pi = Math::PI



puts (Math.sin(pi) + Math.cos(pi)).round(2)