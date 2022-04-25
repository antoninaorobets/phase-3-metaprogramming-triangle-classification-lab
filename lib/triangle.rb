require "pry"
class Triangle

  def initialize (a,b,c)
    if (a > 0 and b > 0 and c > 0) and (a+b>c and a+c > b and b+c>a)
        @a = a 
        @b = b
        @c = c
      else
        raise TriangleError
    end
  end

  def kind
    if (@a==@b and @b==@c and @a==@c)
      return :equilateral
    elsif (@a==@b or @b==@c or @a==@c)
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
