class StudentClass

  # attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_student_name
    return @name
  end

  def get_student_cohort
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end

end
