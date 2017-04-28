class City < ApplicationRecord

    has_many :posts
    has_many :users, through: :posts

    validates_uniqueness_of :title
end
