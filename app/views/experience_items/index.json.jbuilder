json.array!(@experience_items) do |experience_item|
  json.extract! experience_item, :id, :description, :experience_id
  json.url experience_item_url(experience_item, format: :json)
end
