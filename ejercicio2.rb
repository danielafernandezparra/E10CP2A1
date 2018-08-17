module Formula
  def perimetro
    if self.class == Rectangulo
      puts "Este Rectangulo tiene un perimetro de #{altura*2 + base*2}"
    elsif self.class == Cuadrado
      puts "Este Cuadrado tiene un perimetro de #{lado*4}"
    end
  end

  def area
    if self.class == Rectangulo
      puts "Este Rectangulo tiene un área de #{altura * base}"
    elsif self.class == Cuadrado
      puts "Este Cuadrado tiene un área de #{lado**2}"
    end
  end
end

class Rectangulo
  attr_reader :base, :altura
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "#{base} y #{altura}"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    print lado
  end
end

puts Rectangulo.new(10, 20).area
puts Cuadrado.new(10).area
puts Rectangulo.new(10, 20).perimetro
puts Cuadrado.new(10).perimetro
