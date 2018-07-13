module EditActions 
    def delete
      puts "Who would you like to delete?"
      delete_name= gets.chomp.downcase
      # puts "Are you sure?\n(Y)es or (N)o"
      Politician.the_list.each_with_index{|element, index| 
      if  element.name.downcase== delete_name
        Politician.the_list.delete_at(index)
      else
        element = element
      end
    }
  
  end

  def update
    puts "Who would you like to update?"
    name = gets.chomp.downcase

    Politician.the_list.each{|element| 
    if element.name.downcase== name
        puts "New name?"
        new_name= gets.chomp
        element.name= new_name
        puts "New party?"
        new_party = gets.chomp
        element.party_affiliation = new_party
    else
        element= element
    end
}
end


end