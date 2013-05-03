json.array!(@teachers) do |teacher|
  json.extract! teacher, :name, :course_id
  json.url teacher_url(teacher, format: :json)
end