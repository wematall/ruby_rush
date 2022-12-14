#!/usr/bin/ruby
# encoding: utf-8

# Ищем в строке хэштеги
# Напишите программу, которая «вытаскивает» из строки, введенной пользователем хэштеги.

# Хэштегом мы считаем символ решетки и следующие за ним сколько угодно букв
#  (как русских, так и латинских, как прописных, так и заглавных), цифр, знаков подчеркивания и минусов.

# Знаки препинания (запята, точка, восклицательный и вопросильный знаки) и пробелы «рвут» хэштег.

# Например:

# Введите строку с хэштегами:
# Будете у нас на #Колыме? Нет, уж лучше #вы_к_нам!

# Нашли вот такие хэштеги: #Колыме, #вы_к_нам

hashtag_regexp = /#[[:word:]-]+/

puts "Введите строку с хэштегами:"

string = STDIN.gets.chomp

hashtags = string.scan(hashtag_regexp)

puts ""
puts "Нашли вот такие хэштеги: " + hashtags.join(', ')