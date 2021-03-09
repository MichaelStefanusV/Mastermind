# frozen_string_literal: true

# lib/mastermind/Player.rb

module Mastermind
  class Player
    attr_reader :name
    attr_accessor :code

    def initialize(input = {})
      @name = input.fetch(:name, 'Player')
      @code = input.fetch(:code, '')
    end

    def randomize_code
      @code = gen_code
    end

    private

    def gen_code
      Code.new.num
    end
  end
end
