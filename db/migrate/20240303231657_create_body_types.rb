class CreateBodyTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :body_types do |t|
      t.string :body_type
      t.references :car_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
