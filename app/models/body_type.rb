class BodyType < ApplicationRecord
  has_many :car_models
  has_many :car_makes, through: :car_models
end
