class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :book_url, :image_url, :user_id, :category_id, :collection_id
  belongs_to :category
  belongs_to :user
end
