class City < ApplicationRecord

    has_many :posts, :dependent => :delete_all
    has_many :users, through: :posts

    validates_uniqueness_of :title
end
