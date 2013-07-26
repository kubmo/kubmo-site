class CreateDonation < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.string :email
      t.string :transaction_number

      t.timestamps
    end
  end
end
