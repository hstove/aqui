module Aqui
  # A parser to get the useful parts of `caller`
  class Parser
    attr_accessor :caller_message
    def initialize(caller_message)
      @caller_message = caller_message
    end

    def parts
      @parts ||= @caller_message[0..@caller_message.index(':in `')].split(':')
    end

    def file
      parts[0].gsub(Dir.pwd + '/', '')
    end

    def line_number
      parts[1]
    end
  end
end
