#!/usr/bin/ruby
# encoding: utf-8

# Просто монетка
# Напишите программу «Монетка»: она генерирует случайное число 0 или 1. 
# И выводит на экран «Выпал орел» для нуля или «Выпала решка» для единицы.

# Непростая монетка
# Модифицируйте программу из предыдущей задачи так, 
# чтобы иногда выпадало еще и "ребро" («Монета встала на ребро»). 
# Причем ребро должно выпадать намного реже, 
# чем орел или решка (вероятность 1/10 или меньше).






# Variant 3 Монетка на ребре

coin_front = "Выпал орел"
coin_back  = "Выпала решка"
coin_edge  = "Монетка на ребре"
coin = nil

coin = rand(11)

if (coin == 10)
	puts coin_edge
else
	coin = rand(2)
	puts coin == 0 ? coin_front : coin_back
end

