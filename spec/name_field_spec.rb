require 'spec_helper.rb'

describe 'name field tests' do

  $data_provider_review_name_invalid.each do |product, review, expected|

    context "given invalid tests "  do
      it "returns alert_danger" do

        expect(Application.get.load_home_page\
               .choose_desktop_product_by_category(product)\
               .choose_product_name\
               .choose_write_review\
               .apply_bl(review)).to eql(expected)
      end
    end

  end
end
