class CreateAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :assignments do |t|
      t.integer :class_id
      t.string :title
      t.text :description
      t.date :due_date
      t.date :assigned_date

      t.timestamps
    end
  end
end
