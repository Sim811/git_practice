


class Git 
  
  def initialize
    menu
  end

    def menu
      puts "1) Enter git command"
      puts "2) Exit"
      choice = gets.to_i
    case choice
    when 1
      puts "Enter Git Command"
      puts_git(gets.strip)
      menu
   when 2
      Exit
   else
      puts "Invalid Input"
      sleep(2)
      print `clear`
      menu
   end
  end

  def puts_git(cmd)
   puts `git #{cmd} -h`

  end

end


menu
