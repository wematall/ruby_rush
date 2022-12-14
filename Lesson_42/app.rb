#!/usr/bin/ruby
# encoding: utf-8

# Создайте файлы paris.rb, rome.rb и london.rb, 
# в каждом из них определите один метод visit_paris, visit_rome и visit_london соответственно.
#  Внимательнее, методы не должны называться одинаково.

# В каждом из этих методов с помощью команды puts выведите фразу Приехали в ... 
# (вместо точек — название города) и список достопримечательностей 
# (скопируйте в условии или найдите в интернете сами для ваших городов, можно взять любые 3).

# Напишите программу, которая имитирует прогулку по городам: 
# она должна подключать в себя созданные файлы и вызвать последовательно методы, объявленные в этих файлах.

# «Посетите» все эти города. Должно получиться что-то типа:

# Приехали в Париж
# Эйфелева Башня, Лувр, Нотр-Дам де Пари

# Приехали в Лондон
# Биг Бэн, Трафальгарская площадь, Букингемский дворец

# Приехали в Рим
# Пантеон, Собор Святого Петра, Колизей

require "./paris.rb"
require "./london.rb"
require "./rome.rb"

visit_paris()

sleep 3

visit_rome()

sleep 3

visit_london()

sleep 3

puts "Вот такое путешествие!"