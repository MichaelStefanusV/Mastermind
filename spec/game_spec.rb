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

    context '#key_checker' do
      xit "return key if the key is valid" do
        game = Game.new(human: Player.new)
        key = "1234"
        expect(game.key_checker(key)).to eq("1234")
      end
    end
    
    context '#indicato_change' do
      xit "Returns + if the numbers are the same index and - if the number is not the same index but same number" do
        game = Game.new(human: Player.new(name: "Ricardo", code: "4324"))
        game.change_key("3442")
        expect(game.indicator_change).to eq("----")
      end

      xit "Returns + if the numbers are the same index and - if the number is not the same index but same number" do
        game = Game.new(human: Player.new(name: "Ricardo", code: "3442"))
        game.change_key("3442")
        expect(game.indicator_change).to eq("++++")
      end
    end

  end
end