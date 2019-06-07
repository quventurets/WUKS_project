json.extract! user, :id, :name, :schoolname, :grade, :facluty, :created_at, :updated_at
json.url user_url(user, format: :json)
