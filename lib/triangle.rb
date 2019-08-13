class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def check_triangle
    if (a +  b <= c || a + c <= b || b + c <= a) ||
       (a <= 0 ||  b <= 0 || c <= 0) 
      raise TriangleError
    end
  end

  def kind
    check_triangle
    if a == b && b == c 
      :equilateral
    elsif a == b || b == c || a == c 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Invalid triangle via 'triangle inequality' - 
            The sum of the lengths of any two sides of a triangle 
            always exceeds the length of the third side. 
            Further, each side must be larger than 0."
    end
  end

end
