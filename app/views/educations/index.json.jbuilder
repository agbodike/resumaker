json.array!(@educations) do |education|
  json.extract! education, :id, :month, :university, :degree, :major, :resume_id
  json.url education_url(education, format: :json)
end
