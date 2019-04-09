require "minitest/autorun"
require_relative '../lib/say.rb'

class Test < Minitest::Test
    def setup
        @say = Say.new
    end

    def test_that_thing_can_say
        assert_equal "something", @say.say_something
    end
end
