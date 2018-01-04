class AddOfficialNameToNationals < ActiveRecord::Migration[5.1]
  def change
    add_column :nationals, :OfficialName, :string
  end
end
