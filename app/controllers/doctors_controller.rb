class DoctorsController < ApplicationController
  def index

  end

  def profile

  end

  def create
    @doctor = Doctor.new(:current_user)
  end

end