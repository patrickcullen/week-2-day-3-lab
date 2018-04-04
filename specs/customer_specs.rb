require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test
  def setup()
    @drink1 = Drink.new("Beer", 10)
    @drink2 = Drink.new("Wine", 15)
    @drink3 = Drink.new("Vodka", 20)
    @drink = [@drink1, @drink2, @drink3]
    @pub = Pub.new("Codeclan_pub", 0, @drink)
    @customer = Customer.new("Dave", 100)
  end

  def test_customer_name()
    assert_equal("Dave", @customer.name)
  end

  def test_customer_wallet()
    assert_equal(100, @customer.wallet)
  end

  def test_buy_drink__decreases_wallet()
    @customer.buy_drink(@drink1)
    assert_equal(90, @customer.wallet)
  end

  def test_customer_stomach_starts_empty()
    assert_equal(0, @customer.drink_count())
  end

  # def test_drink_count_is_1()
  #   @customer.take_drink(@pub)
  #   assert_equal(1, @customer.drink_count())
  # end

end
