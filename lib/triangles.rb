class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
    @sides_array = [side1, side2, side3]
  end

  def triangle_type
    @sides_array.uniq!
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      'not a triangle'
    elsif @sides_array.length ==2
      'isoceles'
    elsif @sides_array.length ==1
      'equilateral'
    elsif @sides_array.length ==3
      'scalene'
    end
  end
end

t=Triangle.new(1,2,2)
p t.triangle_type
