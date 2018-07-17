# Classe de joueur
class Player
  attr_accessor :name, :value # Les variables name et value seront accessibles et modifiables a travers le jeu

  # Chaque joueur se verra attribuer un nom et une valeur à sa creation
  def initialize(name, value)
    @name = name
    @value = value
  end
end
