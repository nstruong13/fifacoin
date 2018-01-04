class CreateNationals < ActiveRecord::Migration[5.1]
  def change
    create_table :nationals do |t|
      t.integer :num_coins

      t.timestamps
    end
  end
end
