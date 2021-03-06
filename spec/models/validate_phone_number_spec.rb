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
  it 'validate minimum length phone number' do
    user = User.new(phone_number: "+3", password: "password")
    validation = user.valid?
    expect(validation).to eq false
  end
  it 'validate maximum length phone number' do
    user = User.new(phone_number: "+00000000000000000000000000", password: "password")
    validation = user.valid?
    expect(validation).to eq false
  end
end