class Pub

  attr_reader :name, :till, :drink

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end

  def drink_count()
    return @drinks.count()
  end

  def request_a_drink(name)
    for drink in @drinks
      if drink == name
        return true
      end
    end
  end

  def sell_drink(drink, customer)
      @till += drink.price
      customer.buy_drink(drink)
  end


  # def give_drink(drink, customer)
    # for drink in Drinks
    # if the drink is equal to the one being passed in
    # remove the drink from the inventory @Drinks
    # give it to the customer
    # make the customer pay for it
 # end

end
