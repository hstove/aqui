module Aqui
  # A class for providing the message of `aqui`
  class Colorizer
    def initialize(message, object)
      @parser = Aqui::Parser.new(message)
      @object = object
    end

    def file
      @parser.file.colorize(:light_yellow)
    end

    def line_break
      ':'.colorize(:light_green)
    end

    def line_number
      @parser.line_number.colorize(:light_cyan)
    end

    def spacer
      ' - '.colorize(:light_green)
    end

    def object_class
      @object.class.to_s.colorize(:light_white)
    end

    def method
      "##{@parser.method}".colorize(:light_green)
    end

    def message
      [
        file,
        line_break,
        line_number,
        spacer,
        object_class,
        method
      ].join('')
    end
  end
end
