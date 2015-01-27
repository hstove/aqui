require 'spec_helper'

describe Aqui do
  describe Object do
    it 'should output' do
      expect { aqui }.to output('something').to_stdout
    end
  end
end
