require 'minitest/autorun'
load 'e:/agh/4s/ruby/lab2/zad1.1.rb'
 
# Tests
class Tests < MiniTest::Test

  # preparation
  def setup
    @foo1 = foo("1 1 22  4444 1 333")
    @res1 = { 1=>3, 2=>1, 3=>1, 4=>1}

    @foo2 = foo(" 1 1 22 55555 333 1 1 \n 1 1 ")
    @res2 = { 1=>6, 2=>1, 3=>1, 5=>1}

    @foo3 = foo("")
    @res3 = { }

    @foo4 = foo("      \n")
    @res4 = { }

  end
 
  # testing foo witn differend words, differend length, random order
  def test_foo_1
    assert_equal(@foo1, @res1)
  end
 
  # testing foo witn differend words, differend length, random order, several lines
  def test_foo_2
    assert_equal(@foo2, @res2)
  end
 
   # testing foo witn no words
   def test_foo_empty
    assert_equal(@foo3, @res3)
   end
 
    # testing foo witn no words, several lines
   def test_sum_new_line
    assert_equal(@foo4, @res4)
   end

end