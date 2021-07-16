class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :book_url, :image_url, :category_id, :category, :user_id, :user

  belongs_to :user
  belongs_to :category
end
