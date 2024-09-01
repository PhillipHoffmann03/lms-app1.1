class CreateCourseClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :course_classes do |t|
      t.integer :course_id
      t.integer :teacher_id
      t.string :name
      t.text :description
      t.string :schedule
      t.string :room

      t.timestamps
    end
  end
end
