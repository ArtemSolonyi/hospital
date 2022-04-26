require 'rails_helper'
RSpec.describe User, type: :model do
  it 'not validate phone_number' do
    user = User.new(phone_number: "s1s", password: "password")
    validation = user.valid?
    expect(validation).to_not eq true
  end

  it 'validate phone_number' do
    user = User.new(phone_number: "+38068312356", password: "password")
    validation = user.valid?
    expect(validation).to eq true
  end
end