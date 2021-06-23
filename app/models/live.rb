class Live < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  has_one_attached :samnail
  belongs_to :category
  belongs_to :atmosphere
  with_options presence: true do
    validates :image
    validates :title
    validates :samnail
  end
end
