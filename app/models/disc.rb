class Disc < ApplicationRecord
  has_many :song_discs
  has_many :songs, through: :song_discs
  validates :name, presence: true
end
