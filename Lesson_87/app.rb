#!/usr/bin/ruby

# Шифрование MD5, SHA1
# Напишите программу, которая шифрует введённое пользователем слово
#  одним из механизмов MD5 или SHA1.

# Например:

# Введите слово или фразу для шифрования:
# Хороший программист

# Каким способом зашифровать:
# 1. MD5
# 2. SHA1
# 1

# Вот что получилось:
# 9136d475e0fbf87e4fcdc9cb6c38ccc4

require 'digest/md5'
require 'digest/sha1'

result = nil

def crypt_md5(string)
	result = Digest::MD5.hexdigest string
	puts ""
	puts "Вот что получилось:"
	puts result
end

def crypt_sha1(string)
	result = Digest::SHA1.hexdigest string
	puts ""
	puts "Вот что получилось:"
	puts result
end

puts "Введите слово или фразу для шифрования:"
string = STDIN.gets.chomp

puts ""
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

crypt = STDIN.gets.chomp

if crypt == "1"
	crypt_md5(string)
elsif crypt == "2"
	crypt_sha1(string)
else
	puts "такой метод не поддерживается"
end
