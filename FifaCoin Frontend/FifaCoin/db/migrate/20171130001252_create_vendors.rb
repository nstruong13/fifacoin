class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.integer :num_coins

      t.timestamps
    end
  end
end
