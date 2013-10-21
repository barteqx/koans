require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle'

class AboutTriangleProject < Neo::Koan
  def test_equilateral_triangles_have_equal_sides
    assert_equal 1.7320508075688772, triangle(2, 2, 2)
    assert_equal 43.30127018922193, triangle(10, 10, 10)
  end

  def test_isosceles_triangles_have_exactly_two_sides_equal
    assert_equal 5.562148865321747, triangle(3, 4, 4)
    assert_equal 5.562148865321747, triangle(4, 3, 4)
    assert_equal 5.562148865321747, triangle(4, 4, 3)
    assert_equal 9.9498743710662, triangle(10, 10, 2)
  end

  def test_scalene_triangles_have_no_equal_sides
    assert_equal 6.0, triangle(3, 4, 5)
    assert_equal 51.521233486786784, triangle(10, 11, 12)
    assert_equal 3.799671038392666, triangle(5, 4, 2)
  end
end
