#!/usr/bin/ruby
# encoding: utf-8

require "./human.rb"

# Человек с именем и фамилией
# Создайте класс «Человек» с двумя свойствами: имя и отчество.

# В этом классе напишите два метода: 
# конструктор и метод, 
# который будет возвращать полное имя человека. 
# Конструктор принимает имя и отчество и записывает их в нужные поля. 
# Второй метод возвращает полное имя человека.

# Напишите программу, которая использует этот класс: 
# создайте трёх разных людей и выведите на экран их полные имена:

# У нас есть три человека:
# Гаврила Петрович
# Фёдор Петрович
# Василий Алибабаевич

human_1 = Human.new("Гаврила", "Петрович")
human_2 = Human.new("Фёдор", "Петрович")
human_3 = Human.new("Василий", "Алибабаевич")

puts "У нас есть три человека: "

puts human_1.get_full_name()
puts human_2.get_full_name()
puts human_3.get_full_name()
