
require_relative '../data/application_source.rb'
require_relative '../data/application_source_repository.rb'
require_relative '../tools/browser_wrapper.rb'
require_relative '../pages/application.rb'
require_relative 'spec_helper.rb'

describe "open_cart" do
    context "given home_page" do
      it "add to cart" do
        expect(Application.get.load_home_page
                   .add_2.sub_total_of_product).to eql(333)
        sleep 5
      end
    end

end
