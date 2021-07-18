class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :childs_name, :username, :email, :password, :image_url

  # has_many :daily_entries
  # has_many :comments
  # has_many :libraries
  # has_many :categories, through: :libraries
  
end
