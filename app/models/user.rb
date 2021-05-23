class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true, uniqueness: true
    validates_presence_of :password

    has_many :locations
    has_many :ratings
    has_many :comments
end