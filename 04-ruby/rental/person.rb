class Person
  attr_accessor :name, :age, :gender


  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "name is #{name} age is #{} gender is #{gender}"
  end
end