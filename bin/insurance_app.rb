# This will "insert" the contents of the person.rb here
require_relative '../lib/insured_person.rb'

tom = InsuredPerson.new('Tom', 'Dyer', '06-02-1957')

puts "Tom's first name is #{tom.first_name}"
tom.last_name = 'Jones'

msg = tom.give_insurance? ? "should" : 'should not'
puts "Tom #{msg} get insured"

tom.current_smoker = true
msg = tom.give_insurance? ? "should" : 'should not'
puts "Tom #{msg} get insured"

tom.married = true
msg = tom.give_insurance? ? "should" : 'should not'
puts "Tom #{msg} get insured"
