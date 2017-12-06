require_relative 'currency_repository.rb'
require_relative 'product.rb'
class ProductRepository

  private_class_method :new
  def self.default
    MacBook
  end

  def self.MacBook
    Product.new("MacBook",
                "Intel Core 2 Duo processor Powered by an Intel Core 2 Duo processor at speeds up to 2.1",
                {CurrencyRepository.currency_euro.name => "472.33",
                 CurrencyRepository.currency_pound_sterling.name => "368.73",
                 CurrencyRepository.currency_dollar.name => "602.00"})
  end

  def self.IPhone
    Product.new("iPhone",
                "iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a nam",
                {CurrencyRepository.currency_euro.name => "96.66",
                 CurrencyRepository.currency_pound_sterling.name => "75.46",
                 CurrencyRepository.currency_dollar.name => "123.20"})
  end

  def self.Apple_Cinema_30
    Product.new("Apple Cinema 30",
                "The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed sp",
                {CurrencyRepository.currency_euro.name => "86.31",
                 CurrencyRepository.currency_pound_sterling.name => "67.38",
                 CurrencyRepository.currency_dollar.name => "110.00"})
  end

  def self.Canon_EOS_5D
    Product.new("Canon EOS 5D",
                "Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we'r",
                {CurrencyRepository.currency_euro.name => "76.89",
                 CurrencyRepository.currency_pound_sterling.name => "60.03",
                 CurrencyRepository.currency_dollar.name => "98.00"})
  end
end
