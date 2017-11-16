json.extract! course, :id, :title, :prof, :created_at, :updated_at
json.url course_url(course, format: :json)