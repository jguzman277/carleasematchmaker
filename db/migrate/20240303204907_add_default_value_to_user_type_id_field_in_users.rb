class AddDefaultValueToUserTypeIdFieldInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :user_type_id, :bigint, default: "Admin"
  end
end
