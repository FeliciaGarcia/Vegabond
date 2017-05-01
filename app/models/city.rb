class City < ApplicationRecord

    has_many :posts, :dependent => :delete_all
    has_many :users, through: :posts

    validates_uniqueness_of :title
end
# the relationshp between the cities, posts, and users
#users have many posts and cities have many posts. users are 
#related to the cities through the posts