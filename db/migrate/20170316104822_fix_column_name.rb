class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :user_type, :type_id
  end
end
