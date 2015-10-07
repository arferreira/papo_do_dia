json.array!(@authors) do |author|
  json.extract! author, :id, :name, :email, :contact
  json.url author_url(author, format: :json)
end
