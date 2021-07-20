class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :childs_name, :username, :email
end
