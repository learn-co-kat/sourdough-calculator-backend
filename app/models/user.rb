class User < ApplicationRecord
    has_many :bakes
    has_many :notes, through: :bakes
end
