require 'minitest/autorun'
require 'minitest/pride'
require './odd_array.rb'

class OddArrayTest < Minitest::Test
  def test_initialize
    assert OddArray.new([1, 2, 3])
    assert_raises(ArgumentError) do
      OddArray.new
    end
    assert_raises(ArgumentError) do
      OddArray.new(1, 2, 3)
    end
  end

  def test_can_add_items
    odd = OddArray.new([1, 2, 3])
    assert odd << 4
  end

  def test_only_keep_odd_numbers
    odd = OddArray.new([1, 2, 3])
    odd << 4
    odd << 5
    assert_equal [1, 3, 5], odd.to_a
  end
end
