class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.integer :class_id
      t.integer :student_id
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end
