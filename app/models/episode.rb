class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def ratings
        self.appearances.map {|appearance| appearance.rating}
    end
end
