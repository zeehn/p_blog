class User < ApplicationRecord
    has_many :articles
    before_save { self.email = email.downcase }
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
    VALID_EMAIL_REGEX = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false}, length: { minimum: 5, maximum: 100 }, format: { with: VALID_EMAIL_REGEX }
end