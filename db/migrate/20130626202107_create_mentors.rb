class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :occupation
      t.string :email
      t.string :twitter
      t.string :linkedin
      t.string :why

      t.timestamps
    end
  end
end
