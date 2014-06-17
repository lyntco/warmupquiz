require 'pry'
class School
  attr_accessor :school_name, :db

  def initialize(school_name)
    @school_name = school_name
    @db = {}
  end

  def add(student_name, grade)
    @student_name = student_name
    @grade = grade
    @db[@grade] ||= []
    @db[@grade] << @student_name
  end

  def grade(grade)
    @db[grade]
  end

  def sort
    @db.each do |grade, students|
      students.sort!
    end
    @db = Hash[@db.sort]
  end

end

school = School.new("GAWDI")
school.add("Nelson", 5)
school.add("Bart", 5)
school.add("Lisa", 50)
school.add("Ralph", 1)



binding.pry