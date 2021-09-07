class Item < ApplicationRecord
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping
  belongs_to :prefectures
  belongs_to :shipping_days

  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, presence: true
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_id, presence: true
  validates :shipping_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefectures_id, presence: true
  validates :prefectures_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_days_id, presence: true
  validates :shipping_days_id, numericality: { other_than: 1 , message: "can't be blank"}
end
