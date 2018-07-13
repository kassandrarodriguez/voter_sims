module CreateActions

  def create_politician
    puts "Name?"
    name = gets.chomp
    puts "Party?\n(D)emocrat or (R)epublican"
    party= gets.chomp.downcase
  
    if party == "d" || party == "democrat"
      party = "Democrat"
    elsif  party == "r" || party == "republican"
      party = "Republican"
    else
      puts "You didn't enter correctly. The party will now be Independent"
      party ="Independent"
    end
   p Politician.new(name, party)
  end


  def create_voter
    puts "Name?"
    name = gets.chomp
    puts "Party?\n(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
    party= gets.chomp.downcase
    case party
    when "l" , "liberal"
      party = "Liberal"
    when "c", "conservative"
      party = "Conservative"
    when "t", "tea Party"
      party = "Tea Party"
    when "s", "socialist"
      party = "Socialist"
    when "n", "neutral"
      party= "Neutral"
    else
      puts "You didn't enter correctly. The party will now be Neutral"
      party = "Neutral"
    end
   p Voter.new(name, party)
  end

    def create(choice)
    if choice == "p" || choice == "politician"
      create_politician
    elsif choice == "v" || choice =="voter"
      create_voter
    end
  end
end