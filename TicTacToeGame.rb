require 'pry' # Gem Pry pour tester le code en live via binding.pry
require 'rubocop' # Gem Rubocop pour avoir un code "propre"
load "Board.rb" # Chargement du fichier Board.rb
load "BoardCase.rb" # Chargement du fichier BoardCase.rb
load "Player.rb" # Chargement du fichier Player.rb

# Classe principale créant toutes les instances de classe de joueur et de grille
class Game
  def initialize
    puts "Bienvenue au super jeu de folie de la mort qui tue"
    puts "Player 1, donne moi ton p'tit nom"
    @name1 = gets.chomp
    puts "Player 2, toi aussi donne moi ton p'tit nom"
    @name2 = gets.chomp
    puts "Allez c'est parti !"
    @player1 = Player.new(@name1, "X") # Creation du premier joueur
    @player2 = Player.new(@name2, "O") # Creation du deuxieme joueur
    @grid = Board.new # Creation de la grille de jeu
  end

  # Methode principale du jeu
  def go
    loop do # Boucle du jeu opérant tant qu'il n'y aura pas un vainqueur ou un match nul
      @grid.play(@player1) # Tour du premier joueur
      @grid.victory(@player1, @player2) # Verification de la presence d'un gagnant
      @grid.play(@player2) # Tour du deuxieme joueur
      @grid.victory(@player1, @player2) # Verification de la presence d'un gagnant
    end
  end
end

Game.new.go # Creation d'une instance de la classe jeu et lancement de la methode go
