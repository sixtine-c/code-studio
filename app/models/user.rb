class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  normalizes :email, with: -> email { email.downcase.strip }

  generates_token_for :password_reset, expires_in: 15.minutes do
    password_salt&.last(10)
  end
end
