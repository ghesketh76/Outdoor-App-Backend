class User < ApplicationRecord
    has_many :ratings
    has_many :activities, through: :ratings
end