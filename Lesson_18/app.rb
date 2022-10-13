#!/usr/bin/ruby
# encoding: utf-8

# Конвертор рублей в доллары
# Напишите конвертер валют рубли-доллары: программу, 
# которая спрашивает курс, потом спрашивает у пользователя, сколько у него рублей, 
# а потом выдает результат в долларах.

# Например:

# Сколько сейчас стоит 1 доллар в рублях?
# > 41.23
# Сколько  у вас рублей?
# > 30000

# Ваши запасы равны: $ 727.63

puts "Программа-конвертор рубли в доллары"
puts ""

puts "Сколько сейчас стоит 1 доллар в рублях?"
puts "Введите курс: "

rate = gets.chomp().to_f

puts "Сколько у вас рублей?"

amount = gets.chomp().to_f

result = amount / rate
result = result.round(2)

puts "Выши запасы равны: $ #{result}"


