class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :role
      t.integer :profile_id

      t.timestamps
    end
  end
end
