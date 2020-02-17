json.extract! pet, :id, :kind_id, :owner_id, :name, :birth_day, :birth_month, :birth_year, :breed_id, :picture, :pet_registration_number, :created_at, :updated_at
json.url pet_url(pet, format: :json)
