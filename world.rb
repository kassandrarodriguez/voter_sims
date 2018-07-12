require_relative 'politician.rb'
require_relative 'create'
require_relative 'create_politician'
require_relative 'create_voter'
require_relative 'list'
require_relative 'delete'
require_relative 'update'

include Create
include CreatePolitician
include CreateVoter
include List
include Delete
include Update

def breaks
  puts "*" * 20
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



def main
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
