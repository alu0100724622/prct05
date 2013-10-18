require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def test_suma
      assert_equal([2, 1], Fraccion.new().suma(1,1,1,1))   # (1/1) + (1/1) = (2/1)
      assert_equal([22, 15], Fraccion.new().suma(2,3,4,5)) # (2/3) + (4/5) = (22/15)
      
   end

   def test_resta
      assert_equal([0, 1], Fraccion.new().resta(1,1,1,1))   # (1/1) - (1/1) = (0/1)
      assert_equal([2, 15], Fraccion.new().resta(4,5,2,3)) # (4/5) - (2/3) = (2/15)
      
   end

   def test_producto
      assert_equal([2, 3], Fraccion.new().producto(1,2,4,3))   # (1/2) * (4/3) = (4/6) = (2/3)
      assert_equal([-3, 8], Fraccion.new().producto(-1,2,3,4)) # (-1/2) * (3/4) = (-3/8)
      
   end

   def test_division
      assert_equal([1, 1], Fraccion.new().division(4,4,1,1))    # (4/4) / (1/1) = (1/1)
      assert_equal([85, 112], Fraccion.new().division(17,14,8,5)) # (17/14) / (8/5) = (85/112)
 
   end
end
