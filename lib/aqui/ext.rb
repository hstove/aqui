# Extend the top-level `Object` class to provide the `aqui` method
class Object
  def aqui
    colorizer = Aqui::Colorizer.new(caller[0], self)
    print colorizer.message
    print "\n"
  end
end
