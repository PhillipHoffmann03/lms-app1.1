json.extract! course, :id, :name, :description, :credits, :teacher_id, :created_at, :updated_at
json.url course_url(course, format: :json)
