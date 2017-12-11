class MessageRepository

  private_class_method :new

  def self.success_mssg
    'Thank you for your review. It has been submitted to the webmaster for approval.'
  end

  def self.name_danger_mssg
    'Warning: Review Name must be between 3 and 25 characters!'
  end

  def self.text_danger_mssg
    'Warning: Review Text must be between 25 and 1000 characters!'
  end

  def self.rating_danger_mssg
    'Warning: Please select a review rating!'
  end

end
