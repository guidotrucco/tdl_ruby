json.extract! student, :id, :name, :padron, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
