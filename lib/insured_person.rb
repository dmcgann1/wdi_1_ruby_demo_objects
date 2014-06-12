require_relative 'person'

#creates a subclass of Person
class InsuredPerson < Person
  #Generate a getter for the instance var @first_name
  attr_reader
  #Generate a getter and settor for instance var @last_name
  attr_accessor :current_smoker

  def initialize(fname, lname, dob_str)
    super
    @current_smoker = false
  end

  #boolean accessor so I can use the ? idiom
  def current_smoker?
    @current_smoker
  end

  def give_insurance?
    years_to_live > 20
  end

  #all methods below are private - only accessable within instances methods
  private

  def years_to_live
    (79 - age) + (current_smoker? ? -7 : 0) + (married? ? +5 : 0)
  end
end
