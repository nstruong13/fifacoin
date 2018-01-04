class AddOfficialNameToVendors < ActiveRecord::Migration[5.1]
  def change
    add_column :vendors, :OfficialName, :string
  end
end
