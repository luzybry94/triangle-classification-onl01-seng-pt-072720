require 'pry'
class Triangle
  # write code here
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a <= 0 || @b <= 0 || @c <= 0 || @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a != @b && @b != @c && @a != @c
      return :scalene
    else 
      return :isosceles
    end
  end
  
  class TriangleError < StandardError
  
  end
  
end
