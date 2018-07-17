class Board

  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  def initialize
  @board=[]
  one=BoardCase.new(1)
  two=BoardCase.new(2)
  three=BoardCase.new(3)
  four=BoardCase.new(4)
  five=BoardCase.new(5)
  six=BoardCase.new(6)
  seven=BoardCase.new(7)
  eight=BoardCase.new(8)
  nine =BoardCase.new(9)

  @board = [one, two, three, four, five, six, seven, eight, nine]
  end

  def grid
  puts " #{@board[0].value} | #{@board[1].value} | #{@board[2].value} "
  puts "-----------"
  puts " #{@board[3].value} | #{@board[4].value} | #{@board[5].value} "
  puts "-----------"
  puts " #{@board[6].value} | #{@board[7].value} | #{@board[8].value} "
  end

  def play(player)
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)

          puts grid
            puts "#{player.name}, Choisis une case "
            @player_choice = gets.chomp.to_i
            switch(player)
   end

  def taken
  check = nil
  unless @board[@player_choice-1].value.to_s[/\d/].nil?
    check = false
  else
    check = true
    puts "Cette case est déjà prise !\nReessaye"
  end
  return check
 end

  def switch(player)
    unless taken == true
      @mark= player.value
      @board[@player_choice-1].value = @mark
      puts "#{player.name} occupe maintenant la case #{@player_choice} !"
    else
      play(player)
    end
  end

  def victory(player1, player2)
if [@board[0].value, @board[1].value, @board[2].value].all?{ |item| item == "X" } || [@board[3].value, @board[4].value, @board[5].value].all?{ |item| item == "X" } || [@board[6].value, @board[7].value, @board[8].value].all?{ |item| item == "X" } || [@board[6].value, @board[4].value, @board[2].value].all?{ |item| item == "X" } || [@board[0].value, @board[4].value, @board[8].value].all?{ |item| item == "X" } || [@board[2].value, @board[5].value, @board[8].value].all?{ |item| item == "X" } || [@board[1].value, @board[4].value, @board[7].value].all?{ |item| item == "X" } || [@board[0].value, @board[3].value, @board[6].value].all?{ |item| item == "X" }
      puts "#{player1.name} a gagné"
      exit
    elsif [@board[0].value, @board[1].value, @board[2].value].all?{ |item| item == "O" } || [@board[3].value, @board[4].value, @board[5].value].all?{ |item| item == "O" } || [@board[6].value, @board[7].value, @board[8].value].all?{ |item| item == "O" } || [@board[6].value, @board[4].value, @board[2].value].all?{ |item| item == "O" } || [@board[0].value, @board[4].value, @board[8].value].all?{ |item| item == "O" } || [@board[2].value, @board[5].value, @board[8].value].all?{ |item| item == "O" } || [@board[1].value, @board[4].value, @board[7].value].uniq == "O" || [@board[0].value, @board[3].value, @board[6].value].all?{ |item| item == "O" } 
      puts "#{player2.name} a gagné"
      exit
    elsif @board.all? { |x| x.value.to_s[/\d/].nil? }
      puts "Match nul"
      exit
    end

  end
end