class Bake < ApplicationRecord
    belongs_to :user
    has_many :notes
    has_many_attached :photos
end
