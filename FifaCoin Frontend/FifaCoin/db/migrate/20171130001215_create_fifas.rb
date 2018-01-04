class CreateFifas < ActiveRecord::Migration[5.1]
  def change
    create_table :fifas do |t|
      t.integer :num_coins

      t.timestamps
    end
  end
end
