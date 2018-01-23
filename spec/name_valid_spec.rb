require 'spec_helper.rb'

describe 'name field valid tests' do

  $data_provider_review_name_valid.each do |product, review,  expected|
    context "given invalid tests "  do
      it "returns alert_success" do
        $log.info "name field valid tests started"
        expect(Application.get.load_home_page\
               .choose_desktop_product_by_category(product)\
               .choose_product_name\
               .choose_write_review\
               .leave_review(review)).to eql(expected)
        $log.info "name field valid tests finished"
      end
    end

  end
end
