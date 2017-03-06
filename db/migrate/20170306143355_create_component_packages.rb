class CreateComponentPackages < ActiveRecord::Migration[5.0]
  def change
    create_table :component_packages do |t|
      t.integer :package_id
      t.integer :component_id

      t.timestamps
    end
  end
end
