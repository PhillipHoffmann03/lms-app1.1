json.extract! parent, :id, :user_id, :first_name, :last_name, :phone_number, :email, :address, :created_at, :updated_at
json.url parent_url(parent, format: :json)
