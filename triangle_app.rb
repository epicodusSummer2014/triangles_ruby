require './lib/triangles'

def triangle_input
  loop do
    puts 'WELCOME TO TRIANGLE WORLD'
    puts 'please enter your lengths to discover the species of your triangle type'
    puts 'enter the first side length'
    side1 = gets.chomp.to_i
    puts 'enter the second side length'
    side2 = gets.chomp.to_i
    puts 'enter the third side length'
    side3 = gets.chomp.to_i

    t = Triangle.new(side1, side2, side3)
    p t.triangle_type
    if t.triangle_type == 'not a triangle'
      puts 'not a triangle, please try again.'
    else
     puts "You have given birth to a baby #{t.triangle_type} triangle!"
    end
    puts "press x to exit"
    choice = gets.chomp
    if choice == 'x'
      exit
    end
  end
end

triangle_input
