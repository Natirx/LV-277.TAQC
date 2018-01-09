
class PriceUtils

  private_class_method :new

  def self.price_by_text(text)
    text.delete! ','
    text[1, text.length-1].to_f
  end

  def self.sub_total_price a, b
    a=((a-b)/1.2).round(2)
    return a
  end

end

