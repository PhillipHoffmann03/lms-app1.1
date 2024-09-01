class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :subject_specialization

      t.timestamps
    end
  end
end
