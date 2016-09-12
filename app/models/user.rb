class User < ApplicationRecord
  has_many :comments
  has_many :challenges
  has_secure_password
end
