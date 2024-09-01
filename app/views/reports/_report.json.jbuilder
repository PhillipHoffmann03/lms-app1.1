json.extract! report, :id, :student_id, :course_id, :overall_grade, :comments, :created_at, :updated_at
json.url report_url(report, format: :json)
