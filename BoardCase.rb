# Classe des cases de la grille
class BoardCase
  attr_accessor :value

  # Chaque case cree se verra attribuer une valeur
  def initialize(value)
    @value = value
  end

  # Methode transformant la classe de la valeur appele en "String"
  def to_s
    @value.to_s
  end
end
