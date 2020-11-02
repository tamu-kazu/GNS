class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :first_half_score
    validates :second_half_score
    validates :total_score
    validates :golf_course
    validates :date
  end

end
