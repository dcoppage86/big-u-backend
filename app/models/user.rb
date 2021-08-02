class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: {minimum: 5}
    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, uniqueness: true

    has_many :daily_entries, dependent: :destroy
    has_many :comments
    has_many :books
    has_many :categories, through: :books
end
