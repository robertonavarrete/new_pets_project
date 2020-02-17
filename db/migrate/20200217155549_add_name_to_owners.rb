class AddNameToOwners < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :nickname, :string
  end
end
