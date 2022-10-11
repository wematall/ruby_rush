#!/usr/bin/ruby
# encoding: utf-8

# Просто монетка
# Напишите программу «Монетка»: она генерирует случайное число 0 или 1. 
# И выводит на экран «Выпал орел» для нуля или «Выпала решка» для единицы.

# Variant 1

coin_front = "Выпал орел"
coin_back  = "Выпала решка"
coin = nil

rnd_number = [0, 1]
coin = rnd_number.sample

puts coin == 0 ? coin_front : coin_back

# Variant 2

coin_front = "Выпал орел"
coin_back  = "Выпала решка"
coin = nil

rnd = Random.new
coin = rnd.rand(2)

puts coin == 0 ? coin_front : coin_back