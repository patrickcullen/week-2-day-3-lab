require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Beer", 10)
    @drink2 = Drink.new("Wine", 15)
    @drink3 = Drink.new("Vodka", 20)

  end

  def test_drink__beer()
    assert_equal("Beer", @drink1.name)
  end

  def test_drink_price()
    assert_equal(10, @drink1.price)
  end
end
