class Song < ApplicationRecord
  has_many :songcolors
  # has_many :users_songs
  # has_many :users, through: :users_songs

  validates :name, presence: true
end
