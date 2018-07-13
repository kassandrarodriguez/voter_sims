require_relative 'person.rb'

class Voter < Person
  @@voters = []

  attr_accessor :party_affiliation

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
     @@voters
  end


  def self.the_list=(arg)
    @@voters= arg
 end
end
