require_relative 'person.rb'

class Voter < Person
  @@voters = []

  attr_reader :party_affiliation
  def initialize(name, party_affiliation)
    super(name)
    @party_affiliation = party_affiliation
    @@voters << self
  end


  def inspect
    "Voter, #{@name}, #{@party_affiliation}"
  end

  def to_s
    "Voter, #{@name}, #{@party_affiliation}"
  end


  def self.the_list
    puts @@voters
  end

end
