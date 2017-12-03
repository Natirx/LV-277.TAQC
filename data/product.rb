class Product
  attr_reader :name, :description, :prices
  
  def initialize(name, description, prices)
    @name=name;
    @description=description;
    @prices=prices;
  end

  def prices_by_currency_item(currency)
    prices[currency.name]
  end

end
