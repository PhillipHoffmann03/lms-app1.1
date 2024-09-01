json.extract! result, :id, :student_id, :course_id, :exam_id, :score, :grade, :created_at, :updated_at
json.url result_url(result, format: :json)
