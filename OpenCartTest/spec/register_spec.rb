require 'rspec'

describe 'Register page' do

  it 'should be invalid registration' do

    @registration_business_page = @app.load_register_page
    expect(@registration_business_page.register_account?(UserRepository.valid_user)).to be false
  end
end