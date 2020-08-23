class Disc < ApplicationRecord
  has_many :song_discs, dependent: :destroy
  has_many :songs, through: :song_discs
  validates :name, presence: true
end
