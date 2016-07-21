require 'pry'
require './person'

File.open('people.txt', 'a+') do |file|

  print "Input person and save file (y/n) "
  response = gets.chomp.downcase

  while response == 'y'
    print "Enter name, age, gender: "

    file.puts gets.chomp

    print "Input person and save to file (y/n)"
    response = gets.chomp.downcase
  end

end


people = []

# r - read only
File.open('people.txt', 'r') do |file|

  file.each do |line|

    data = line.chomp.split(',')
    person = Person.new(data[0], data[1], data[2])
    people << person
    # people.push(person)
  end

end

binding.pry # pausing my program