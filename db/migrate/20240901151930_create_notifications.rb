class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.text :message
      t.integer :type
      t.integer :status
      t.date :date

      t.timestamps
    end
  end
end
