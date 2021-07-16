class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
end
