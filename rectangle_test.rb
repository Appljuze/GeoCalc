require './rectangle'
require 'test/unit'

class Rectangle_test < Test::Unit::TestCase
  
  def test_width
    testRectangle = Rectangle.new(Point.new(0,0), Point.new(2,3))
    assert_equal(2, testRectangle.width)
  end
  
  def test_height
    testRectangle = Rectangle.new(Point.new(0,0), Point.new(2,3))
    assert_equal(3, testRectangle.height) 
  end
  
  def test_perimeter
    testRectangle = Rectangle.new(Point.new(0,0), Point.new(2,3))
    assert_equal(10, testRectangle.perimeter)
  end
  
  def test_area
    testRectangle = Rectangle.new(Point.new(0,0), Point.new(2,3))
    assert_equal(6, testRectangle.area)
  end
end