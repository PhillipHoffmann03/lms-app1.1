class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :student_id
      t.integer :course_id
      t.string :overall_grade
      t.text :comments

      t.timestamps
    end
  end
end
