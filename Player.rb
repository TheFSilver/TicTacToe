class Player					# Classe de joueur
  attr_accessor :name, :value	# Les variables name et value seront accessibles et modifiables a travers le jeu

  def initialize(name, value)	# Chaque joueur se verra attribuer un nom et une valeur à sa creation
    @name = name
    @value = value
  end
end
