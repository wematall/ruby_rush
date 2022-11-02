#!/usr/bin/ruby
# encoding: utf-8
require "./person"

# Человек в возрасте
# Доработайте программу из предыдущего задания так, 
# чтобы в конструкторе теперь передавался (и сохранялся в переменной экземпляра класса)
#  еще один параметр: возраст.

# Добавьте в класс метод, который говорит, 
# пожилой человек (возраст > 60) или нет. 
# А метод, который выводит полное имя, поправьте так, 
# чтобы молодежь он называл только по имени, 
# а пожилых уважительно, по имени и отчеству.

# Создайте в программе пару человек с разными именами и возрастами
#  и выведите на экран информацию о них.

# Например:

# У нас есть два человека:
# Сергей
# И ему 41 — молодой
# Константин Львович
# И ему 61 — пожилой

person_1 = Person.new("Сергей", "Владимирович", 41)
person_2 = Person.new("Константин", "Львович", 61)

puts "У нас есть два человека:"

puts person_1.get_full_name

puts person_2.get_full_name
