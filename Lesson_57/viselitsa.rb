
content_path = "./" + File.dirname(__FILE__)

require content_path + "/game.rb"
require content_path + "/result_printer.rb"
require content_path + "/word_reader.rb"

puts "Игра виселица. Версия 3."

sleep 1



reader = WordReader.new()
slovo = reader.read_from_file(content_path + "/data/words/words.txt")

game = Game.new(slovo)
printer = ResultPrinter.new


while game.status == 0
	printer.print_status(game)
	game.ask_next_letter
end

printer.print_status(game)