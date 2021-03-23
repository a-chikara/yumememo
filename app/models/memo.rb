class Memo < ApplicationRecord
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :category_id
    validates :day_id
  end
end
