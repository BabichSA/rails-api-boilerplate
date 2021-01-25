class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :username, :first_name, :last_name, :role, :created_at, :updated_at
end
