class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :posts, :dependent => :delete_all
    has_many :cities, through: :posts

    validates :photo_url, presence: true
end
#ERD relationships as well as our validation after a user is logged in