module CreateVoter
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
end