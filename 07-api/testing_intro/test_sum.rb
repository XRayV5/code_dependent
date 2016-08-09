require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new 

require_relative 'sum'

class SumOfThreeTest < MiniTest::Test

  def test_passing_in_20
    assert_equal 63, sum_of_3s(20)
  end

  def test_passing_in_10
    assert_equal 18, sum_of_3s(10)
  end

  def test_passing_in_strings_of_numbers_should_work
    assert_equal 18, sum_of_3s('10')
  end

end
