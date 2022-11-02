require_relative "game"
require_relative "result_printer"

puts "Игра виселица. Версия 2."

sleep 1

slovo = ARGV[0]

if (Gem.win_platform? && ARGV[0])
slovo = slovo.dup
  .force_encoding("IBM866")
  .encode("IBM866", "cp1251")
  .encode("UTF-8")
end

game = Game.new(slovo)
printer = ResultPrinter.new


while game.status == 0
	printer.print_status(game)
	game.ask_next_letter
end

printer.print_status(game)

