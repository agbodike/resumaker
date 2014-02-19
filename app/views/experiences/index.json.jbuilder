json.array!(@experiences) do |experience|
  json.extract! experience, :id, :company, :job_title, :location, :description, :start_date, :end_date, :resume_id
  json.url experience_url(experience, format: :json)
end
