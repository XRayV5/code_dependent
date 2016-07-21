require 'pry'

fish = {
  name: 'fishy fish',
  health: 50,
  speed: 5
}

fish2 = {
  name: 'fishy fish 2',
  health: 40,
  speed: 5
}

def create_fish(name = 'fish', health = 50)
  puts 'creating fish'

  new_fish = {
    name: name,
    health: health,
    speed: 5
  }

  return new_fish
end

def better_create_fish(options)
  return {
    name: options[:name],
    health: options[:health],
    speed: 5
  }
end

def normal_fish_sleep(fish)

end

def shark_sleep()
end


# blue print for how each fish object works and what properties it has
class Fish # camelCase starts with capital

  # factory to make objects

  # shortcut for writing getters setters
  attr_accessor :name, :health

  # contructor special method that runs
  # when you want to create a new fish
  def initialize(name = 'fish')
    # variable scopes
    @name = name
    @health = 50
  end

  def sleep
    @health = @health + 5
  end

  # def name
  #   return @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

end


# better_create_fish( { name: 'fish' } )

binding.pry
