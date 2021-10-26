# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  def test_triangle(a, b, c)
    sides = [a,b,c]

    sides.each.with_index do |side, index|
      leftover = sides.select.with_index do |leftoverSide, leftoverIndex|
        leftoverIndex != index
      end

      raise TriangleError, "Invalid triangle" unless side > leftover[0] - leftover[1] && side < leftover[0] + leftover[1]
    end
  end

  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "A triangle can't have a side less or equal than 0"
  end

  test_triangle(a,b,c)
  
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
