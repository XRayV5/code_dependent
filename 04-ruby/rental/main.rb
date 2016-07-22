require 'pry'
require './apartment'
require './person'
require './building'


p1 = Person.new('person1', 4, 'm')
p2 = Person.new('person2', 3, 'm')
p3 = Person.new('person3', 4, 'm')


a1 = Apartment.new(1234)

b1 = Building.new('123 collins st')

a1.renters << p1 << p2 << p3

b1.apartments.push(a1)

binding.pry