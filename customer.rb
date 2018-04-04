class Customer
  attr_reader :name , :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @stomach = []
  end

  def drink_count()
    return @stomach.count()
  end

  # def take_drink(pub, drink)
  # if the pub has the drink
  # pay for the drink
  # add the drink to our stomach
  # pub should remove drink from its @drinks inventory
  # end
  def buy_drink(drink)
    @wallet -= drink.price
  end



  # if wallet > pub.drink(drink).price && pub.drink(drink) != nil
  #   @stomach.push(pub.drink)
  # end
  # end

end
