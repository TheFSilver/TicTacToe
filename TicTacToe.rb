require 'pry'

class Board

end

class BoardCase

end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Game
puts "Bienvenue dans le Tic-Tac-Toe"

print "Veuillez entrer le nom du joueur n°11!\n> "
nom1 = gets.chomp.to_s
print "\nVeuillez entrer le nom du joueur n°2!\n> "
nom2 = gets.chomp.to_s

joueur1 = Player.new(nom1)
joueur2 = Player.new(nom2)


end