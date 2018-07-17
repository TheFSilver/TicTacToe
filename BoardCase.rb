class BoardCase
  attr_accessor :value
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  def initialize(value)
    @value = value
    #TO DO doit régler sa valeur, ainsi que son numéro de case
  end

  def to_s
    return @value.to_s
  end
end