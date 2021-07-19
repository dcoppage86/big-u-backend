class Book < ApplicationRecord
    belongs_to :collection
    belongs_to :user
    belongs_to :category
    has_many :comments
end