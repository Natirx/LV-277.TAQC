class ReviewRepository

  private_class_method :new




  #name_field
  def self.all_valid_fields
    Review.new("Name" ,"Thanks for a review, we appreciate it")
  end

  def self.short_valid_name_field
    Review.new("Nam" ,"Thanks for a review, we appreciate it")
  end

  def self.long_valid_name_field
    Review.new("Namesnamesnamesnamesnames" ,"Thanks for a review, we appreciate it")
  end

  def self.empty_name_field
    Review.new("" ,"Thanks for a review, we appreciate it")
  end

  def self.short_invalid_name_field
    Review.new("Na" ,"Thanks for a review, we appreciate it")
  end

  def self.long_invalid_name_field
    b='13'
    10.times {b=b +'myname'}
    Review.new(b,"Thanks for a review, we appreciate it")
  end

  #text_field

  def self.short_invalid_text_field
    Review.new("Nam" ,"Thanks ")
  end

  def self.short_valid_text_field
    Review.new("Nam" ,"Thanks for a review, we appreciate it")
  end

  def self.long_valid_text_field
    b='13'
    10.times {b=b+'Thanks for a review, we appreciate it'}
    Review.new("Nam" ,b)
  end

  def self.long_invalid_text_field
    b='13'
    40.times {b=b+'Thanks for a review, we appreciate it'}
    Review.new("Nam" ,b)
  end

  def self.empty_text_field
    Review.new("Nam" ,"")
  end


  def self.all_empty_field
    Review.new("" ,"")
  end

end
