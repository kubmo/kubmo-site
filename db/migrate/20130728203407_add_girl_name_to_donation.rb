class AddGirlNameToDonation < ActiveRecord::Migration
  def up
    add_column :donations, :girl_name, :string
  end

  def down
    remove_column :donations, :girl_name, :string
  end
end
