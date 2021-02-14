#spec/Code_spec.rb
require "spec_helper"

module Mastermind
  describe Code do
    
    context '#initialize' do
      it 'It initializes Code class without an input' do
        expect { Code.new }.to_not raise_error
      end

      it 'Initialize Code class with an input' do
        expect { Code.new(num: "1234") }.to_not raise_error
      end
    end

  end
end