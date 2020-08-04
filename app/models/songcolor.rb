class Songcolor < ApplicationRecord
  belongs_to :song
  # belongs_to :user

  validates :color, presence: true, uniqueness: true
  # 空ではない事
end
