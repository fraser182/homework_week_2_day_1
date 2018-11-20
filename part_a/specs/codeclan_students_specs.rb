require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_students.rb')

class StudentTest < MiniTest::Test


  def setup() #runs before every single test in MiniTest
    @student = Student.new("Fraser", "G10")
  end

  def test_get_student_name()
    assert_equal("Fraser", @student.name) # links to def name
  end

  def test_get_student_cohort()
    assert_equal("G10", @student.cohort)
  end

  def test_set_student_name()
    @student.set_name("Ally") # change students name
    assert_equal("Ally", @student.name)
  end

  def test_set_student_cohort()
    @student.set_cohort("G6")
    assert_equal("G6", @student.cohort)
  end

  def test_student_can_talk()
    result = @student.talk()
    assert_equal("I can talk", result)
  end
# OR
  # def test_student_can_talk()
  #   assert_equal("I can talk", @student.talk())
  # end
  #
  def test_student_has_favourite_language
    result = @student.favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end


end
