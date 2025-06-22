# frozen_string_literal: true

require 'test_helper'
require 'app'

class AppTest < Minitest::Test
  def test_greet
    assert_equal 'Hello, Alice!', App.greet('Alice')
  end
end
