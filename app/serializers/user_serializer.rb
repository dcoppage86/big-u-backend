class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :childs_name, :username, :email
  belongs_to :collection
  has_many :comments
  has_many :daily_entries
  has_many :books
end
