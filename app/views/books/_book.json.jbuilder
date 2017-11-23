json.extract! book, :id, :name, :isbn, :quantity, :created_at, :updated_at
json.url book_url(book, format: :json)
