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
  if ((a+b <= c) || (a+c <= b) || (b+c <= a) || (a < 1 || b < 1 || c < 1))
    raise TriangleError
  end
  sides = [a, b, c].uniq.length
  if sides == 1
    return :equilateral
  end
  if sides == 2
    return :isosceles
  end
  if sides == 3
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end