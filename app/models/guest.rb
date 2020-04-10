class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def sorted_app
    self.appearances.order(rating: :desc)
  end
end
