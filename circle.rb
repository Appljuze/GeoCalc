# Circles are defined by the center point and a point
# on the circle itself, though internally we store
# the center point and radius.
# Circles are immutable - once constructed the points
# cannot be changed.

require './point'
require './line'

class Circle
  include Math
  
  # Methods below are private.
  private

  # Initialize the Circle from its center point and
  # a point on the circle.
  # The instance variables are @center and @radius
  # (The radius is the distance between the two points).
  def initialize(center = Point.new, on_circle = Point.new)
    @center = center
    @radius = Line.new(center, on_circle).length
  end

  # Methods below are public
  public

  # Allow read access to the center point and radius
  attr_reader :center, :radius

  # Circle diameter
  # Diameter = radius * 2
  def diameter
    radius*2
  end

  # Circle circumerence
  # Circumference = pi * diameter 
  def circumference
    Math::PI * diameter
  end
  
  # Circle area
  # Area = pi * radius squared
  def area
    Math::PI * radius**2
  end

  def to_s
    "Circle center #{center} and radius #{radius}"
  end
end
