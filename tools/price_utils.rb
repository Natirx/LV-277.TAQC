
class PriceUtils

  private_class_method :new

  def self.price_by_text(text)
    price_re = /\d+\.\d+/
    matcher = price_re.match(text)
    unless matcher
      # TODO throw exception
      puts "There was no match..."
      exit
    end
    matcher[0].to_f
  end

  def self.sub_total_price a, b
    a=((a-b)/1.2).round(2)
    return a
  end


end

