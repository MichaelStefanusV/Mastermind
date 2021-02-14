#spec/Player_spec.rb
require "spec_helper"

module Mastermind
  describe Player do 

    context '#initialize' do
      it 'It initializes Player class without an input' do
        expect { Player.new }.to_not raise_error
      end

      it 'Initialize Player class with an input' do
        expect { Player.new(name: "Armin") }.to_not raise_error
      end

      it 'Initialize Player class with code' do
        expect { Player.new(name: "Armin", code: "4242") }.to_not raise_error
      end

      it 'It returns the name' do
        armin = Player.new(name: "Armin", code: "4242")
        expect(armin.name).to eq("Armin")
      end

      it 'It returns the code' do
        armin = Player.new(name: "Armin", code: "4242")
        expect(armin.code).to eq("4242")
      end
    end

    context '#randomize_code' do 
      it 'It randomize the code held by the player' do
        andreas = Player.new(name: "Andreas", code: "6969")
        before = andreas.code
        andreas.code = andreas.randomize_code
        after = andreas.code
        truth = before == after
        expect(truth).to eq(false)
      end

      it 'It randomize 4 digit code' do
        andreas = Player.new(name: "Andreas", code: "6969")
        andreas.code = andreas.randomize_code
        len = andreas.code.length
        expect(len).to eq(4)
      end
    end

  end
end