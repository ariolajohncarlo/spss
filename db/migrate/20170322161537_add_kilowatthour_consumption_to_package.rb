class AddKilowatthourConsumptionToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :kilowatthour_consumption, :decimal
  end
end
