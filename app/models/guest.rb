class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances
  # has_many :appearances
end
