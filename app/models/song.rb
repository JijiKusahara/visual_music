class Song < ApplicationRecord
  has_many :songcolors, dependent: :destroy

  has_many :song_discs, dependent: :destroy
  has_many :discs, through: :song_discs
  validates :name, presence: true
end
