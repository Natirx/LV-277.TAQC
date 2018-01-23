require 'rubygems'
require 'selenium-webdriver'
require_relative '../../pages/Application.rb'
require_relative '../../data/user_data/user_repository.rb'
require_relative '../../data/product_repository.rb'
require_relative '../../data/message_repository.rb'



Given(/^We navigate to the homepage$/) do
  Application.get.load_home_page

end

When(/^We write review on a product$/) do
  $review_name_valid=Application.get.load_home_page\
    .choose_desktop_product_by_category(ProductRepository.desktop_mac)\
    .choose_product_name\
    .choose_write_review\
    .leave_review( UserRepository.all_valid_fields)

end

Then(/^The results message will be displayed$/) do
  begin

    expect($review_name_valid).to eq(MessageRepository.success_mssg)
  ensure
    Application.remove
  end
end
