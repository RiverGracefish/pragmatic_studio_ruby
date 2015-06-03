# Let's start with Single Quotes:

puts 'Mikey loves Goonies'
# We need to use \' to tell Ruby that this is not the end of the string.
puts 'Mikey\'s favorite movie is Goonies'

movie = 'Goonies'
puts 'Mikey\'s favorite movie is ' + movie

rank = 10

# puts movie + ' has a rank of ' + rank
# This won't work because Ruby raise error of can't convert Fixnum into String.
# However, we can use to_s to convert Fixnum into String.

puts movie + ' has a rank of ' + rank.to_s

puts '==========================================================================='

# The following are using Double Quotes:

puts "Mikey loves Goonies"
puts "Mikey's favorite movie is Goonies"

movie = 'Goonies'
# Anything inside of "#{}" will interpolation the value into a string.
puts "Mikey's favorite movie is #{movie}"

rank = 10
# In this case, we don't even need to use the to_s method since it already interpolate into string.
puts "#{movie} has a rank of #{rank}"

# Now you can see it's much more easy to use Double Quotes in a simple forms and easier forms in this case.

# We can even time the rank by 2
puts "#{movie} has a rank of #{rank * 2}"

# Double Quote also support \n for a new line there, and \t for a new tab there.
puts "#{movie} has \ta rank of \n#{rank}"

# These are the different of this two type of string, Double Quote are more powerful the Single Quote.
# In general we use double quote every where unless we have a simple word or line.

