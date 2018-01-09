require 'spec_helper.rb'

describe 'text field test' do

  $data_provider_review_text_invalid.each do |product, review, expected|


    context "given valid tests"  do
      it "returns alert_success" do
        $log.info "name field invalid tests started"
        expect(Application.get.load_home_page\
               .choose_desktop_product_by_category(product)\
               .choose_product_name\
               .choose_write_review\
               .leave_review(review)).to eql(expected)
        $log.info "name field invalid tests finished"
      end
    end

  end
end
