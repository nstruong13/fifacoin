class CreateLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :locals do |t|
      t.integer :num_coins

      t.timestamps
    end
  end
end
