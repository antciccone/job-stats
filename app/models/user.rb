class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  has_many :applieds
  has_many :companies
  has_many :homeworks
  has_many :in_persons
  has_many :responses
  has_many :phone_interviews

end
