class CreateResults < ActiveRecord::Migration[7.1]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :exam_id
      t.integer :score
      t.string :grade

      t.timestamps
    end
  end
end
