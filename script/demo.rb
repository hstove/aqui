require "bundler/setup"
Bundler.require

# Animal
class Animal
  def make_noise
    @noises_made ||= 0
    @noises_made += 1
    aqui
    nil
  end
end

# Dog
class Dog < Animal
  def make_noise
    super
    'bark'
  end
end

Dog.new.make_noise
