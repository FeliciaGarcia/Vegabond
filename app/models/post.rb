class Post < ApplicationRecord


    belongs_to :user
    belongs_to :city

    validates_presence_of :content
    validates :title,
            presence: true,
            length: {maximum: 200}


end
