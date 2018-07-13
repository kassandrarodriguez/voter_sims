module DisplayActions

    def breaks
        puts "*" * 20
      end

    def list
        puts ""
        puts "List of Politicians:"
        breaks
        puts ""
        puts Politician.the_list
        puts ""
        puts "List of Voters:"
        breaks
        puts ""
        puts  Voter.the_list
        puts ""
   end



def the_options(decision)
    case decision
    when "c" , "create"
      puts "What would you like to create?"
      puts "(P)olitician or (V)oter"
      choice = gets.chomp.downcase
      create(choice)
    when "l", "list"
      list
    when "u", "update"
     update
    when "d", "delete"
      delete
    else
      puts "blah"
    end
  end
end