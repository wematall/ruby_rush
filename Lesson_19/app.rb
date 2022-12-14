#!/usr/bin/ruby
# encoding: utf-8

# Конвертор валют с выбором валюты
# Модифицируйте конвертер валют из предыдущей задачи так, 
# чтобы сначала он спрашивал у пользователя направление конвертации.

# Например:

# Какая у вас на руках валюта?
#   1. Рубли
#   2. Доллары
# > 2
# Сколько сейчас стоит 1 доллар?
# > 41.10
# Сколько у вас долларов?
# > 500
# Ваши запасы на сегодня равны: 20550 руб.
# Убедитесь, что программа правильно считает в обе стороны.

puts "Программа конвертирует USD в RUB и наоборот"

puts "Какая у вас на руках валюта?
1 Рубли
2 Доллары"

currency = gets.chomp()

puts "Сколько сейчас стоит 1 доллар?"
rate = gets.chomp().to_f

if currency == "1"
	puts "Сколько у вас рублей?"
	rub_amount = gets.chomp().to_f
	result = rub_amount / rate
	result = result.round(2)
	puts "Ваши запасы на сегодня равны: $ #{result}"
elsif currency == "2"
	puts "Сколько у вас долларов?"
	usd_amount = gets.chomp().to_f
	result = rate * usd_amount
	result = result.round(2)
	puts "Ваши запасы на сегодня равны: #{result} рублей"
else
	puts "Такой вылюты у нас нет"
end