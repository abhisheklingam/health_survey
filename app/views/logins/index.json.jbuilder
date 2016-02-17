json.array!(@logins) do |login|
  json.extract! login, :id, :first_name, :last_name, :email
  json.url login_url(login, format: :json)
end
