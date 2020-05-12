class User < ApplicationRecord

    before_save { self.email = email.downcase }
	validates :name, presence: true, length: { minimum: 5, maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, 
              format: { with: VALID_EMAIL_REGEX }
	validates :phonenumber, presence: true, length: { is: 9 }
	validates :description, presence: true, length: { minimum: 10, maximum: 500 }
	validates :category, presence: true, length: { minimum: 10, maximum: 500 }
	has_secure_password

end 
