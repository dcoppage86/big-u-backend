class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :author, :book_url, :image_url, :user_id, :category_id, :collection_id
  attribute :comment do |comment|
    comment.comments.map do |com|
      {
        title: com.title,
        content: com.content
      }
    end
  end
end
