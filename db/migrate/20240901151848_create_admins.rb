class CreateAdmins < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.integer :user_id
      t.string :permissions

      t.timestamps
    end
  end
end
