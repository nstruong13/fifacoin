class AddNameToFifa < ActiveRecord::Migration[5.1]
  def change
    add_column :fifas, :name, :string
  end
end
