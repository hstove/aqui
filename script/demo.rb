require "bundler/setup"
Bundler.require

class ClassName
  def go
    1 + 2
    aqui
    3 + 4
    aqui
  end
end

Model.new.go
