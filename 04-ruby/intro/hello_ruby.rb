puts('hello')
# puts('hello again')

3.times do
  puts 'beetlejuice'
end

# conditional structures

person = 'harry'


# brackets no needed
# using double equals
if person == 'harry'
  puts 'harry is here'
end


grade = 'B'

case grade
when 'A'
  puts 'well done you massive nerd'
when 'B','C'
  puts 'you fail'
else
  puts 'you should never try'
end

if grade == 'A'
  puts 'well done'
elsif grade == 'B' || grade == 'C'
  puts 'you fail'
else
  puts 'you should never try'
end

# looping structure

number = 0

while number < 5
  # single quotes print characters as is
  # puts 'the \nbottle number is ' + number.to_s + '.'
  # string interpolation
  puts "the bottle number is #{ number }."
  # number = number + 1
  number += 1
end

# principle of least surprise - most of the time

input = gets.chomp

puts "you typed in #{input}"

# nature of ruby - sync - blocking input output

# guessing game - use the while loop
# print out higher or lower
# until you get the correct answer

secret = 42

print('enter a number: ')
input = gets.chomp()









