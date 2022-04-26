require "rails_helper"

RSpec.describe "Recommendation management", type: :request do
  it 'write recommendation' do
    patient = FactoryBot.create(:patient)
    doctor = FactoryBot.create(:doctor)
    recommendation = "Recommendation to patient"
    post '/recommendations', :params => { patient_id: patient.id, doctor_id: doctor.id, recommendation: recommendation }
    expect(response).to have_http_status(204)
  end
end
