class CreateCarMakes < ActiveRecord::Migration[7.1]
  def change
    create_table :car_makes do |t|
      t.string :make
      t.string :website

      t.timestamps
    end
  end
end
