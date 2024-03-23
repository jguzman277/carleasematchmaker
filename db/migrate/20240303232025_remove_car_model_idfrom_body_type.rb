class RemoveCarModelIdfromBodyType < ActiveRecord::Migration[7.1]
  def change
    remove_column :body_types, :car_model_id, :bigint
  end
end
