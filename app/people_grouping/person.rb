require 'date'

class Person
  attr_accessor :first_name, :last_name, :date_of_birth

  def initialize(first_name, last_name, date_of_birth)
    @first_name = first_name
    @last_name = last_name
    @date_of_birth = date_of_birth
  end

  def age
    today = Date.today
    today.year - date_of_birth.year - ((today.month > date_of_birth.month || (today.month == date_of_birth.month && today.day >= date_of_birth.day)) ? 0 : 1)
  end
end

people = []

number_of_people = gets.chomp.to_i

number_of_people.times do
  input = gets.chomp.split
  first_name = input[0]
  last_name = input[1]
  date_of_birth = Date.parse(input[2])
  people << Person.new(first_name, last_name, date_of_birth)
end

families = people.group_by(&:last_name)

sorted_families = families.sort_by { |_, members| -members.length }
puts
puts "Output:"
sorted_families.each do |last_name, members|
  sorted_members = members.sort_by { |person| [person.age, person.first_name] }
  puts "#{last_name}: #{sorted_members.map(&:first_name).reverse.join(' ')}"
end