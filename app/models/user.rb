class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: {minimum: 5}

    has_many :daily_entries
    has_many :comments
    has_many :books
    belongs_to :collection
end
