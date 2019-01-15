class User < ApplicationRecord
  has_secure_password

  validates :name, prescence: true
  validates :email, presence: true, format: /\A\S+@\S+\z/
  uniqueness: { case_sensitive: false }

end
