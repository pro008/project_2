# Jbuilder.encode do |json|
#   json.array!(@books) do |book|
#       json.name book.name
#       json.description book.description
#   end

# end

# json.array! @books, :id, :name, :description, :price, :author_id, :author_name
json.array! @demo, :id, :name



# json.books @books do |book|
#   json.id book.id
#     json.author_name book.author.author_name
# end
