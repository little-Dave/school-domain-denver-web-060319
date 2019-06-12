# code here!
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster.keys.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade].map {|student| student}
  end

  def sort
    sorted_hash = @roster.each {|key, array| @roster[key] = array.sort}
    sorted_hash
  end
end
