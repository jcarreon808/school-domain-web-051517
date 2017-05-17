class School
  attr_accessor :name, :roster

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade]=[]
      @roster[grade]<<name
    else
      @roster[grade]<<name
    end
  end

  def grade(grade)
    if @roster.has_key?(grade)
      return @roster[grade]
    end
  end

  def sort
    sorted_hash={}
    @roster.each do |grade, names|
      sorted_hash[grade]=names.sort
    end
    sorted_hash
  end
end
