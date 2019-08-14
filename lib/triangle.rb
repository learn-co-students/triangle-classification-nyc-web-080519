class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c 
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else 
      :scalene
    end

  end

  def valid_triangle
    real = [(a+b > c), (a+c > b), (c+b > a)]
    [a, b, c].each do |ele|
      real << false if ele <= 0
      raise TriangleError if real.include?(false)
    end
  end

  class TriangleError < StandardError
  end
end
