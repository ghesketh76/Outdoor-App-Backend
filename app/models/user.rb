class User < ApplicationRecord
    has_many :ratingjoiners
    has_many :activities, through: :ratingjoiners
end