class SongDisc < ApplicationRecord
  belongs_to :song
  belongs_to :disc
end
