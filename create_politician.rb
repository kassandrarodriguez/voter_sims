module CreatePolitician
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
end