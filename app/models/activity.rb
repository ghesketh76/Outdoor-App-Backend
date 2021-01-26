class Activity < ApplicationRecord
    has_many :ratingjoiners
    has_many :users, through: :ratingjoiners
end
