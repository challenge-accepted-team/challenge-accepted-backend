class UserResource < JSONAPI::Resource
  attributes :username, :email, :ext_user_id
  has_many :comments
end
