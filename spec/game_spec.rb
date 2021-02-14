#spec/Game_spec.rb
require "spec_helper"

module Mastermind
  describe Game do
    
    context '#initialize' do
      it 'Initialize without argument' do
        expect { Game.new }.to_not raise_error
      end

      it 'Initialize with a player as and argument' do
        expect { Game.new(human: Player.new) }.to_not raise_error
      end

      it 'Returns :human' do
        expect(Game.new(human: Player.new).human.name).to eq("Player")
      end

      it 'Returns key' do
        expect(Game.new(human: Player.new).key).to eq('')
      end

      it 'Returns indicator' do
        expect(Game.new(human: Player.new).indicator).to eq('')
      end
    end

  end
end