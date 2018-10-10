json.extract! contact, :id, :name, :phone, :email, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
