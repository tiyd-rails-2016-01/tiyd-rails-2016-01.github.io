require 'minitest/autorun'
require 'minitest/pride'

# Write a method which returns the first n primes, where n is provided to the
# method as a parameter.
#
# Remember that the % operator (modulo) is your friend.  It returns a zero if one
# number is divisible by another number.  In other words, 4 % 2 == 0.

# WRITE YOUR CODE HERE.  Name your method `primes`.

def primes(number)
  array = []
  i = 2
  while array.length < number
    stop = false
    sqrt = Math.sqrt(i)
    array.each do |j|
      break if sqrt < j
      if (i % j == 0)
        stop = true
        break
      end
    end
    array << i unless stop
    i = i+1
  end
  array
end


class PrimesChallenge < MiniTest::Test
  def test_one_prime
    assert_equal [2], primes(1)
  end

  def test_two_primes
    assert_equal [2, 3], primes(2)
  end

  def test_ten_primes
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes(10)
  end

  def test_thousand_primes
    first_thousand = primes(10000)
    assert first_thousand.include?(6991)
    assert first_thousand.include?(7907)
    refute first_thousand.include?(1000)
  end

  def test_no_primes
    assert_equal [], primes(0)
  end

  def test_bad_input
    assert_equal [], primes(-34)
  end
end
