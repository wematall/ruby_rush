#!/usr/bin/ruby
# encoding: utf-8

argument = ARGV[0]

if (Gem.win_platform? && ARGV[0])
  argument = argument.dup
    .force_encoding("IBM866")
    .encode("IBM866", "cp1251")
    .encode("UTF-8")
end

if (ARGV[0] == nil)
	abort "Нужен какой нибудь аргумент"
end

if (argument == "дурак")
	puts "Сам дурак!"
else
	puts "Здравствуй, дорогой!"	
end

