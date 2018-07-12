require_relative 'voter.rb'

class Politician < Voter
  @@politicians= []

  def initialize(name, party_affiliation)
    super(name, party_affiliation)
    @@politicians << self
  end

  def inspect
    "Politician, #{@name}, #{@party_affiliation}"
  end

  def to_s
    "Politician, #{@name}, #{@party_affiliation}"
  end

  def self.the_list
    puts @@politicians
  end

  
end
