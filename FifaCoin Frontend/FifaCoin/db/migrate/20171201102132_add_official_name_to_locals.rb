class AddOfficialNameToLocals < ActiveRecord::Migration[5.1]
  def change
    add_column :locals, :OfficialName, :string
  end
end
