class User < ApplicationRecord
  has_secure_password

  has_many :book_shelves

  validates :email, presence: true
  normalizes :email, with: -> email { email.downcase.strip }

  generates_token_for :password_reset, expires_in: 15.minutes do
    password_salt&.last(10)
  end
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
