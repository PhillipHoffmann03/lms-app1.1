class CreateParents < ActiveRecord::Migration[7.1]
  def change
    create_table :parents do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
