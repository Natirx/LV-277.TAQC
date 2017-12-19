require 'rspec'
require 'rubygems'

class User
  # Don't want to accidentally trigger this!
  def save
    puts "save_origin"
    true
  end

  def save_user()
    "saved!" if save
  end
end

def my(user)
  puts "user"
  user.save_user()
end
    
RSpec.describe '#save_user' do
  it 'renders message on success' do
    #user = object_double(User.new, :save => true) #ERROR do not working
    user = User.new
    expect(user).to receive(:save_user)
    #
    allow(user).to receive(:save).and_return(true)
    #expect(user.save_user).to eq("saved!")
    my(user)
  end
end
