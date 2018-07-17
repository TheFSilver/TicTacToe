require 'pry'
require 'rubocop'
load "Board.rb"
load "BoardCase.rb"
load "Player.rb"

class Game
  def initialize
    puts "Bienvenue au super jeu de folie de la mort qui tue"
    puts "Player 1, donne moi ton p'tit nom"
    @name1= gets.chomp
    puts "Player 2, toi aussi donne moi ton p'tit nom"
    @name2= gets.chomp
    puts "Allez c'est parti !"
    @player1 = Player.new(@name1,"X")
    @player2 = Player.new(@name2,"O")
    @grid = Board.new
  end

  def go
    # TO DO : lance la partie
    loop do
      @grid.play(@player1)
      @grid.victory(@player1, @player2)
      @grid.play(@player2)
      @grid.victory(@player1, @player2)
    end
  end
end

Game.new.go