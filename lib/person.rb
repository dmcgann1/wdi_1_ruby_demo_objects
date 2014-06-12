require 'date'

#This is a ruby class
class Person
  #Generate a getter for the instance var @first_name
  attr_reader :first_name, :dob
  #Generate a getter and settor for instance var @last_name
  attr_accessor :last_name, :married

  #dob_str must be in format m-d-Y
  def initialize(fname, lname, dob_str)
    #instance variable have instance/object scope
    @first_name = fname
    @last_name = lname
    @dob = Date.strptime(dob_str, '%m-%d-%Y')
    @married = false
  end

  def married?
    @married
  end

  def full_name
    @first_name + " " + @last_name
  end

  def age
    now = Date.today
    now.year - @dob.year
  end

end
