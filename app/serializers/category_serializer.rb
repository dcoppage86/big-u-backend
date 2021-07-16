class CategorySerializer < ActiveModel::Serializer
  attributes :id, :children, :adult, :parents

  has_many :libraries
  has_many :users, through: :libraries
end
