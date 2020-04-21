# code here!
class School 
  attr_accessor :roster, :name

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end 
  
  def grade(grade)
    @roster[grade]
  end

  def sort
    grades = []
    sortedStudents = {}
    @roster.each do |key, value| 
      value.sort
      grades << key
    end
    grades.sort.map do |grade| 
      sortedStudents[grade] = 0
      sortedStudents[grade] = @roster[grade].sort
    end
    sortedStudents
  end

end
