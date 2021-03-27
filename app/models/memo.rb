class Memo < ApplicationRecord
  has_one_attached :image


  with_options presence: true do
    validates :image
    validates :title
    validates :info
    with_options numericality: { other_than: 1 } do
      validates :deadline_id
      validates :category_id
      validates :day_id
    end
  end


  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category
    belongs_to :day
    belongs_to :deadline
  end
