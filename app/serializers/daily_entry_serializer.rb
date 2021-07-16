class DailyEntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :completed, :user_id, :user

  belongs_to :user
  has_many :comments, through: :users
end
