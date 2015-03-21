

module GameLogic
  
    
  def analyze_board
    @board.grid.each do |row|
      a = row.join
      if a.include? "XXXX"
        @won = true
        print @board.render
        puts "X Wins!"
        
      elsif a.include? "OOOO"
        @won = true
        print @board.render
        puts "O Wins!"
        
      else
        @won = false
      end
    end
    
  end
  
  def ask_to_finish
    puts "Do you want to play again? y/n"
    print ">>"
    input = gets.chomp.downcase
    if input == "y"
      system("ruby lib/start_game.rb")
    else
      exit
    end
      
  end
  
end

       