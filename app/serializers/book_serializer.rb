class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :book_title, :book_author, :book_url, :image_url, :user_id
end
