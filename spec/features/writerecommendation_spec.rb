require "rails_helper"
require "cancan/matchers"
RSpec.feature "Doctor can" do
  before do
    Capybara.default_driver = :selenium
    user = FactoryBot.create(:user)
    doctor = FactoryBot.create(:doctor)
    patient = FactoryBot.create(:patient)
    user_patient = patient.user
    user_patient.patient_id = patient.id
    user_patient.save
    user.doctor_id = doctor.id
    doctor.user_id = user.id
    user.doctor!
    user.save
    doctor.save
    Appointment.create!(patient_id: patient.id, doctor_id: doctor.id)
    visit '/'
    click_link 'LOGIN'
    fill_in 'user[phone_number]', :with => user.phone_number
    fill_in 'user[password]', :with => user.password
    click_button "Log in"
  end

  scenario "write recommendation to patient" do
    fill_in 'send_recommendation', :with => "Something recommendation for patient"
    click_button 'Send recommendation'
    expect(page).to_not have_button 'Send recommendation'
  end

end