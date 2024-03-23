class CarModel < ApplicationRecord
  belongs_to :car_make
  belongs_to :body_type
end
