class CarMake < ApplicationRecord
    has_many :car_models, dependent: :destroy
    has_many :body_type, through: :car_models

    accepts_nested_attributes_for :car_models, allow_destroy: true, reject_if: :all_blank
end
