class BoardCase 			# Classe des cases de la grille
  attr_accessor :value

  def initialize(value)		# Chaque case cree se verra attribuer une valeur
    @value = value
  end

  def to_s					# Methode transformant la classe de la valeur appele en "String"
    @value.to_s
  end
end
