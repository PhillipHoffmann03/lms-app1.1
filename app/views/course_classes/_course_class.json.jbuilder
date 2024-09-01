json.extract! course_class, :id, :course_id, :teacher_id, :name, :description, :schedule, :room, :created_at, :updated_at
json.url course_class_url(course_class, format: :json)
