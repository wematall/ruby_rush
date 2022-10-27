#!/usr/bin/ruby
# encoding: utf-8

# Площадь круга
# Напишите метод, который будет принимать в качестве параметра радиус (radius),
#  а возвращать в качестве результата — площадь круга с этим радиусом.

# Программа должна спросить у пользователя в консоли пару раз радиус
#  и вывести площади кругов на экран.

# Например:

# Введите радиус круга:
# > 10
# Площадь круга: 314.159

# Введите радиус второго круга:
# > 5.7
# Площадь второго круга: 102.0702591

def circle_area (radius)
	return 3.14159 * (radius ** 2)
end

puts "Посчитаем площадь круга"

puts "Введите радиус круга:"

radius = gets.chomp().to_f

puts "Площадь круга: #{circle_area(radius)}"

puts ""

puts "Введите радиус второго круга:"
radius = gets.chomp().to_f

puts "Площадь второго круга: #{circle_area(radius)}"