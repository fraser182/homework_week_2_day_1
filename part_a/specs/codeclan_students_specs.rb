require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_students.rb')

class TestStudent < MiniTest::Test


  def setup()
    @student = Student.new("Fraser", "G10")
  end

  def test_get_student_name()
    assert_equal("Fraser", @student.get_student_name())
  end

  def test_get_student_cohort()
    assert_equal("G10", @student.get_student_cohort())
  end

  def test_set_student_name()
    @student.set_student_name("Ally")
    assert_equal("Ally", @student.get_student_name())
  end

  def test_set_student_cohort()
    @student.set_student_cohort("G6")
    assert_equal("G6", @student.get_student_cohort())
  end

  def test_get_student_to_talk
    assert_equal("I can talk", @student.get_student_to_talk("I can talk"))
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student.favourite_language("Ruby"))
  end


end
