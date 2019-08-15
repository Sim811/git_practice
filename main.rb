require colorize 


class Git 
  
  def initialize
    menu
  end

    def menu
      puts "---- Main Menu ----".colorize(:cyan)
      puts "1) Enter git command".colorize(:cyan)
      puts "2) Exit".colorize(:cyan)
      choice = gets.to_i
    case choice
      when 1
        puts "Enter Git Command".colorize(:green)
        puts_git(gets.strip)
        menu
      when 2
        Exit
      else
        puts "Invalid Input".colorize(:red)
        sleep(2)
        print `clear`
        menu
      end
    end
  end

  def puts_git(cmd)
   puts `git #{cmd} -h`

  end

end


menu
