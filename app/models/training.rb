class Training < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :boxing
  belongs_to :user
  validates :boxing_id, numericality: { other_than: 1 , message: "必ず選んでください"}
end
