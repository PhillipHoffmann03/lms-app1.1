json.extract! attendance, :id, :class_id, :student_id, :date, :status, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)
