class CreateExams < ActiveRecord::Migration[7.1]
  def change
    create_table :exams do |t|
      t.integer :course_id
      t.date :date
      t.string :location
      t.integer :invigilator_id

      t.timestamps
    end
  end
end
