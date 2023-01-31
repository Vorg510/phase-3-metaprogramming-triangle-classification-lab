class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a
      :isosceles
    else
      :scalene
    end
  end
  
  def no_size
    if ([a, b, c] || 0) == 0
        raise TriangleError
        p message
    end
  end

  class TriangleError < StandardError
    def message
      "LLaaaaaa"
    end
  end
end

