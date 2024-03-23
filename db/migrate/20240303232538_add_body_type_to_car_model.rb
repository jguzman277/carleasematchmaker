class AddBodyTypeToCarModel < ActiveRecord::Migration[7.1]
  def change
    add_reference :car_models, :body_type, foreign_key: true
  end
end
