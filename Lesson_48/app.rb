#!/usr/bin/ruby
# encdoding: utf-8

require "./bodybuilder.rb"

person_1 = Bodybuilder.new
person_2 = Bodybuilder.new
person_3 = Bodybuilder.new



person_1.train_muscle("delta")
person_1.train_muscle("biceps")
person_1.train_muscle("triceps")

person_2.train_muscle("delta")
person_2.train_muscle("biceps")
person_2.train_muscle("triceps")

person_3.train_muscle("delta")
person_3.train_muscle("biceps")
person_3.train_muscle("triceps")

puts "Первый бодибилдер:"
person_1.get_muscle_status

puts "Второй бодибилдер:"
person_2.get_muscle_status

puts "Третий бодибилдер:"
person_3.get_muscle_status
