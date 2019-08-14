class Triangle
  # write code here
  attr_reader :lengthOne, :lengthTwo, :lengthThree
  
  def initialize(lengthOne, lengthTwo, lengthThree)
    @lengthOne = lengthOne
    @lengthTwo = lengthTwo
    @lengthThree = lengthThree
  end
  
  def kind
    triangle?
    if lengthOne == lengthTwo && lengthTwo == lengthThree
      :equilateral
    elsif lengthOne == lengthTwo || lengthTwo == lengthThree || lengthOne == lengthThree
      :isosceles
    else
      :scalene
    end
  end
  
  def triangle?
    #define a triangle 
    #if triangle is false for the definition, raise Triangle Error 
    triangle = [(lengthOne + lengthTwo > lengthThree), (lengthOne + lengthThree > lengthTwo), (lengthTwo + lengthThree > lengthOne)]
    [lengthOne, lengthTwo, lengthThree].each do |side|
      raise TriangleError if triangle.include?(false) || side <= 0
    end
  end 
  
  class TriangleError < StandardError 
    def message 
      "You have a Triangle Error" 
    end
  end
  
end
