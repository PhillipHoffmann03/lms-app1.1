json.extract! student, :id, :user_id, :first_name, :last_name, :date_of_birth, :gender, :grade_level, :parent_id, :created_at, :updated_at
json.url student_url(student, format: :json)
