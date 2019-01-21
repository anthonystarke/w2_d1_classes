require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestBankAccount < MiniTest::Test

  def setup
    @student = StudentClass.new("John","E20")
  end

  def test_get_student_name
    assert_equal('John',@student.get_student_name)
  end

  def test_get_student_cohort
    assert_equal('E20',@student.get_student_cohort)
  end

  def test_set_student_name
    assert_equal('Jason',@student.set_student_name('Jason'))
  end

  def test_set_student_cohort
    assert_equal('E30',@student.set_student_cohort('E30'))
  end

  def test_student_can_talk
    assert_equal('I can talk!',@student.student_can_talk)
  end

  def test_favourite_language
    assert_equal('I love Ruby!',@student.say_favourite_language("Ruby"))
  end

end
