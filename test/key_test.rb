require_relative 'test_helper.rb'
require './lib/key'
require 'mocha/minitest'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_has_keys
    assert_nil @key.key
    assert_nil @key.a_key
    assert_nil @key.b_key
    assert_nil @key.c_key
    assert_nil @key.d_key

    @key.stubs(:rand).returns("5188")
    # @key.generate
    assert_equal "05188", @key.generate
    assert_nil @key.a_key
    assert_nil @key.b_key
    assert_nil @key.c_key
    assert_nil @key.d_key
  end
end
