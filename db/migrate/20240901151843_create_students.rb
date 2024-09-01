class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :grade_level
      t.integer :parent_id

      t.timestamps
    end
  end
end
