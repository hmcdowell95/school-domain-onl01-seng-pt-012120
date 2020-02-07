

class School 
  attr_reader :school, :grade
  attr_accessor :student
  ROSTER = {}
  
  def initialize(school)
    @school = school 
  end
  
  def add_student(student, grade)
    if ROSTER.include?(student)
    elsif ROSTER.include?(grade)
      ROSTER[grade] << student
    else
      ROSTER[grade] = []
      ROSTER[grade] << student
    end
  end
  
  def roster
    ROSTER
  end
  def grade=(grade)
    @grade = grade
    return ROSTER[grade]
  end
  def sort 
    ROSTER.collect do |k, v|
      v.sort
    end
    return ROSTER.sort
  end
end