require 'pry'

class School

  attr_accessor :db

  def initialize(name)
    @name = name
    @db = {}
  end

  def db
    return @db
  end

  def add(student, grade)
    if @db[grade] == nil
      @db[grade] = [student]
    else
      @db[grade].push(student)
      # @db[grade] << student
    end 
    # @db[grade] ||= []
    # @db[grade] << student
  end

  def grade(grade)
    @db[grade]
  end

  def sort
    sorted_students = {}
    @db.each do |grade, names|
      sorted_students[grade] = names.sort
    end

    sorted_students.sort.to_h
  end
end

binding.pry