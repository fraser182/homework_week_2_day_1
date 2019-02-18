class Student

  def initialize(name, cohort) #this is what ruby looks for to create an instance of a class
    @name = name
    @cohort= cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end


  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort) #method calls it
    @cohort = new_cohort
  end

  def talk() # every student of the student class gets access to this method.
    return "I can talk"
  end

  def favourite_language(fav_language)
    return "I love #{fav_language}"

  end

end
