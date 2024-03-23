class ChangeUserTypeIdtoOptionalinUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :user_type_id, true 
  end
end
