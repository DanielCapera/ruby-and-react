json.extract! person, :id, :name, :last_name, :phone, :created_at, :updated_at
json.url person_url(person, format: :json)
