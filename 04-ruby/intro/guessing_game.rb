require 'pry'

secret = 42

print 'make a guess: '

# chaining
guess = gets().chomp().to_i()

# binding.pry # debugger

while guess != secret

  if guess > secret
    puts 'try lower'
  else
    puts 'try higher'
  end

  guess = gets.chomp.to_i
end

# if I exit the loop
# which means I guessed it right

puts 'correct'

