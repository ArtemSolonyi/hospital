class Category < ApplicationRecord
  belongs_to :doctor
  has_many :doctors

end
