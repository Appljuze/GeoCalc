require './line'
require 'test/unit'

class Line_test < Test::Unit::TestCase
  
  def test_length
    firstPoint = Point.new(0,0)
    secondPoint = Point.new(4,0)
    assert_equal(4, Line.new(firstPoint, secondPoint).length)
  end
  
end