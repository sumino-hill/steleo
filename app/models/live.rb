class Live < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :category
  belongs_to :atmosphere
  with_options presence: true do
    validates :image
    validates :title
  end
end
