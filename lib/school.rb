require 'pry'
class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    # binding.pry
  end

  def grade(grade)
    @roster[grade]
    # binding.pry
  end

  def sort
    # binding.pry
    # @roster.sort
    @roster.each do |key, value|
      @roster[key]=value.sort
    end
  end
end
