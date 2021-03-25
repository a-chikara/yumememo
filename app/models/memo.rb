class Memo < ApplicationRecord
  has_one_attached :image




  with_options numericality: { other_than: 1 } do
    validates :deadline_id
    validates :title,       presence: true
    validates :category_id, presence: true
    validates :day_id,      presence: true
  end
  validates :image,         presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :category
    belongs_to :day
    belongs_to :deadline
  end
