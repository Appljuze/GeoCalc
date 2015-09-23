require './circle'
require 'test/unit'

class Circle_test < Test::Unit::TestCase
  include Math
  
  def test_diameter
    testCircle = Circle.new(Point.new(0,0), Point.new(2,0))
    assert_equal(4, testCircle.diameter)
  end
  
  def test_circumference
    testCircle = Circle.new(Point.new(0,0), Point.new(2,0))
    assert_equal((Math::PI * 2) * 2, testCircle.circumference)  
  end
  
  def test_area
    testCircle = Circle.new(Point.new(0,0), Point.new(2,0))
    assert_equal(Math::PI * 4, testCircle.area)
  end
  
end