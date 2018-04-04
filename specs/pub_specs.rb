require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Dave", 100)
    @beer = Drink.new("Beer", 10)
    @wine = Drink.new("Wine", 15)
    @spirits = Drink.new("Vodka", 20)
    @drinks = [@beer, @wine, @spirits]
    @pub = Pub.new("Codeclan_pub", 0, @drinks)

  end

  def test_pub_name()
    assert_equal("Codeclan_pub", @pub.name)
  end

  def test_till_amount()
    assert_equal(0, @pub.till)
  end

  def test_customer_requests_drink()
    request = @pub.request_a_drink(@beer)
    assert_equal(true, request)
  end

  def test_sell_drink_increases_till()
    @pub.sell_drink(@beer, @customer)
    assert_equal(10, @pub.till)
  end

  def test_sell_drink_decrease_wallet
    @pub.sell_drink(@beer, @customer)
    assert_equal(90, @customer.wallet)
  end

  def test_amount_of_drinks()
    assert_equal(3, @pub.drink_count)
  end

  # def test_pub_gives_drink()
  # @pub.give_drink()
  # assert_equal(2, @pub.drink_count())
  # end
end
