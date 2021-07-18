class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :user

  belongs_to :user
  has_many :daily_entries, through: :users
end
