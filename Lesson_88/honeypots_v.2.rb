# encoding: utf-8
#
# Программа, иллюстрирующая работу сборщика мусора и понятие «область видимости»
# переменной, версия 2. Массив горшочков теперь вынесен в отдельный метод.

def count_honeypots
	honeypots = []

	5_000_000.times do |i|
		honeypots << "Honeypot #{i}"
	end
end

puts 'Winnie the Pooh is trying to fall asleep...'


count_honeypots

sleep 10

GC.start 

sleep 10

puts 'Now check your memory!'
gets