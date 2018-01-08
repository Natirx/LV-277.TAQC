class Review

  attr_reader :user_name, :text_field

  def initialize(user_name, text_field)
    @user_name=user_name
    @text_field=text_field

  end

end
