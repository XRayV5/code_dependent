# sum of all multiples of 3 within 10

# result = 3 + 6 + 9 = 18
# under 20 = 3 + 6 + 9 + 12 + 15 + 18 = 63
# actual program
def sum_of_3s(max)
  if max.class == String
    return nil
  end

  result = 0
  # max = 20
  x = 0

  (x..max).each do |x|
    if x % 3 == 0
      result = result + x
    end 
    x += 1
  end

  return result
end
# =======================

# def test(expect, actual, message)
#   if expect == actual
#     puts "yayy - #{message}"
#   else
#     puts "fail - #{message}"
#   end
# end

# test(63, sum_of_3s(20), 'passing in 20 as argument')
# test(18, sum_of_3s(10), 'passing in 10 as argument')
# test(3, sum_of_3s(5), 'passing in 5 as argument')
# test(nil, sum_of_3s('5'), 'passing in string as argument returns nil')

# actual == expectation
# if sum_of_3s(20) == 63
#   puts 'yep doing pretty good'
# end 

# when I call sum_of_3s(10)
# I expect the returned value
# to be 18
# if sum_of_3s(10) == 18
#   puts 'yep doing pretty good'
# else
#   puts 'check your code'
# end


