# Rectangles are defined by to diagonal corner Points.
# Rectangles are immutable - once constructed the corner
# points cannot be changed.

require './point'

class Rectangle
  # Methods below are private.
  private

  # Initialize the Rectangle corner points from those
  # provided to Rectangle.new.
  # The instance variables are @c1 and @c2
  def initialize(c1 = Point.new, c2 = Point.new)
    @c1 = c1
    @c2 = c2
  end

  # Methods below are public
  public

  # Allow read access to the two corner points.
  attr_reader :c1, :c2

  # Return the width of the rectangle (absolute value of difference between
  # the corner X coordinates).
  def width
    (c2.x - c1.x).abs
  end

  # Return the height of the rectangle (absolute value of difference between
  # the corner Y coordinates).
  def height
    (c2.y - c1.y).abs
  end

  # Return the perimeter of the rectangle.
  # You must define the method named 'perimeter' in its entirety.
  def perimeter
    (height * 2).abs + (width * 2).abs
  end

  # Return the area of the rectangle
  # You must define the method named 'area' in its entirety.
  def area
    (height * width).abs
  end

  def to_s
    "Rectangle corners #{c1} and #{c2}"
  end
end
