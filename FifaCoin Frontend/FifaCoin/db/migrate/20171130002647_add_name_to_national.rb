class AddNameToNational < ActiveRecord::Migration[5.1]
  def change
    add_column :nationals, :name, :string
  end
end
