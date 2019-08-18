class Triangle

  attr_accessor :len1, :len2, :len3


  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if len1 <= 0 || len2 <=0 || len3 <= 0
      raise TriangleError
    elsif len1 + len2 <= len3
      raise TriangleError
    elsif len1 + len3 <= len2
      raise TriangleError
    elsif len3 + len2 <= len1
      raise TriangleError
    elsif len1 == len2 && len2 == len3
      return :equilateral
    elsif
      len1 == len2 || len1 == len3 || len2 == len3
      return :isosceles
    elsif len1 != len2 && len2 != len3 && len1 != len3
      return :scalene
    end

  end


  class TriangleError < StandardError
  end

end
