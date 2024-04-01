json.extract! member, :id, :first_name, :last_name, :role, :phone_number, :email, :birthdate, :organization_id, :user_id, :created_at, :updated_at
json.url member_url(member, format: :json)
