class Video < ApplicationRecord
  belongs_to :user

  validates :video, presence: true
has_one_attached :video
end
