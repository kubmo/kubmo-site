class CreateEntrepreneurApplications < ActiveRecord::Migration
  def change
    create_table :entrepreneur_applications do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.integer :number
      t.string :email
      t.string :employed
      t.string :internet
      t.string :phone_type
      t.string :picture
      t.string :availability
      t.text :passion
      t.text :business_idea
      t.text :sustainable
      t.text :why
      t.text :impact

      t.timestamps
     end
  end
end
