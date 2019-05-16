require 'minitest/autorun'
load 'e:/agh/4s/ruby/main0.rb'
 
# Tests
class TestSum < MiniTest::Test
  def setup
    @result1 = sum(2, 2)
    @result2 = sum(2, 1.5)
    @result3 = sum(2, '2')
    @result4 = sum('2.1', '2.0')
  end
 
  def test_sum_integer_integer
    assert_equal(@result1, 4)
  end
 
  def test_sum_integer_float
    assert_equal(@result2, 3.5)
  end
 
   def test_sum_integer_string
    assert_equal(@result3, 4)
   end
 
   def test_sum_string_string
    assert_equal(@result4, 4.1)
   end
 
   def test_sum_integer_wrong_number_in_string
    assert_equal(sum(2, 'Ala ma kota123'), 2)
   end
end