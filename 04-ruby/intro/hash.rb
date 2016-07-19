require 'pry' # so I can pause my program to test it

# uses symbols as keys
song = {
  title: 'hello',
  artist: 'lionel richie'
}

# what we really care is to access
# hash we use symbols
# song[:title]

# uses strings as keys
song2 = {
  :title => 'hello',
  'artist' => 'lionel richie'
}

# if I have lots of songs


binding.pry
