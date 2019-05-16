require 'minitest/autorun'
load 'e:/agh/4s/ruby/lab2/zad2.rb'
 
# Tests
class TestSum < MiniTest::Test
  def setup
    @l1 = liczba("Cats")
    @l_res1 = ""

    @l2 = liczba("Cats123Stars")
    @l_res2 = "123"

    @l3 = liczba("1Cats2Stars")
    @l_res3 = "12"

    @w1 = wyraz("Cats")
    @w_res1 = "Cats"

    @w2 = wyraz("Cats123Stars")
    @w_res2 = "CatsStars"

    @w3 = wyraz("1Cats2Stars")
    @w_res3 = "CatsStars"

    @w4 = wyraz("12")
    @w_res4 = ""

  end
 
  def test_liczba1
    assert_equal(@l1, @l_res1)
  end
 
  def test_liczba2
    assert_equal(@l2, @l_res2)
  end
 
   def test_liczba3
    assert_equal(@l3, @l_res3)
   end
 
   def test_wyraz1
    assert_equal(@w1, @w_res1)
   end

   def test_wyraz2
    assert_equal(@w2, @w_res2)
   end

   def test_wyraz3
    assert_equal(@w3, @w_res3)
   end

   def test_wyraz4
    assert_equal(@w4, @w_res4)
   end

end