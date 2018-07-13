require_relative 'politician.rb'
require_relative 'create_actions'
require_relative 'display_actions'
require_relative 'edit_actions'

def main

include CreateActions
include DisplayActions
include EditActions


Politician.new("Elephant1", "Republican")
Politician.new("Donkey1", "Democrat")

Politician.new("Elephant2", "Republican")
Politician.new("Donkey2", "Democrat")

Voter.new("Jessie", "Liberal")
Voter.new("Bob", "Conservative")


  exit = false
  until exit
    breaks
    puts ""
    puts "What would you like to do?"
    puts "(C)reate, (L)ist, (U)pdate, or (D)elete"
    puts "(E)xit"
    decision = gets.chomp.downcase
    if decision.downcase == "e" || decision.downcase == "exit"
      exit = true
    else
      the_options(decision)
    end

  end
end


main
#EOP
