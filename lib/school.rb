

class School 
  attr_reader :school, :grade, :roster
  attr_accessor :student
  
  def initialize(school)
    @school = school 
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @grade = grade
    return @roster[grade]
  end
  def sort 
    @roster.collect do |k, v|
      v.sort
    end
    return @roster.sort
  end
end