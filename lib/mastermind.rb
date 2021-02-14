#lib/mastermind.rb
require 'rubystats'
require 'stringio'

module Mastermind
end

lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/mastermind/**/*.rb"].each { |file| require file }