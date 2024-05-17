class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: {in: 4..12}
  validates :password, length: {minimum: 8}
  validates :email, uniqueness: true
end
