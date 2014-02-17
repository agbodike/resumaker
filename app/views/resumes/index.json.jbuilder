json.array!(@resumes) do |resume|
  json.extract! resume, :id, :title, :objective, :name, :address, :city, :state, :postal_code, :email, :phone_number
  json.url resume_url(resume, format: :json)
end
