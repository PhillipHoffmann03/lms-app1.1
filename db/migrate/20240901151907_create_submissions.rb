class CreateSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :submissions do |t|
      t.integer :assignment_id
      t.integer :student_id
      t.date :submission_date
      t.string :grade
      t.text :feedback

      t.timestamps
    end
  end
end
