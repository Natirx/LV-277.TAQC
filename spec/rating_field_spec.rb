require 'spec_helper.rb'

describe 'rating field test' do

  $data_provider_review_rating_invalid.each do |product, review, expected|


    context "given tests"  do
      it "returns alert_danger" do
        $log.info "rating field invalid tests started"
        expect(Application.get.load_home_page\
               .choose_desktop_product_by_category(product)\
               .choose_product_name\
               .choose_write_review\
               .apply_bl(review)).to eql(expected)
        $log.info "rating field invalid tests finished"
      end
    end

  end
end
