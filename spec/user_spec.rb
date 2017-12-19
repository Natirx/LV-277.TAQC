require 'rspec'
require 'rubygems'

class User
  # Don't want to accidentally trigger this!
  def save
    puts "save_origin"
    true
  end
end

def save_user(user)
  "saved!" if user.save
end

RSpec.describe '#save_user' do
  it 'renders message on success' do
    user = object_double(User.new, :save => true)
    #user = User.new
    expect(save_user(user)).to eq("saved!")
  end
end
