class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :package_name
      t.decimal :cost

      t.timestamps
    end
  end
end
