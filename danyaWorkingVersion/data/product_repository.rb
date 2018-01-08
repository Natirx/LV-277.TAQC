require_relative 'currency_repository.rb'

class ProductRepository

  private_class_method :new
  def self.default
    iMac
  end

  def self.iMac
    Product.new("iMac",
    "Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.",
    {CurrencyRepository.currency_euro.name=>"78.46",
      CurrencyRepository.currency_pound_sterling.name=>"61.25",
      CurrencyRepository.currency_dollar.name=>"100.00"})
  end

  def self.MacBook
    Product.new("MacBook",
    "Intel Core 2 Duo processor Powered by an Intel Core 2 Duo processor at speeds up to 2.1",
    {CurrencyRepository.currency_euro.name=>"472.33",
      CurrencyRepository.currency_pound_sterling.name=>"368.73",
      CurrencyRepository.currency_dollar.name=>"602.00"})
  end

end
