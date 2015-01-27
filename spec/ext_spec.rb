require 'spec_helper'

describe Aqui do
  describe Object do
    it { expect { aqui }.to output(/#{self.class}/).to_stdout }
    it { expect { aqui }.to output(/spec\/ext_spec.rb/).to_stdout }

    # useful for debugging
    # it { aqui }
  end
end
