class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  # has_one :buyer
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping
  belongs_to :prefectures
  belongs_to :shipping_days

  validates :category_id,      numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id,     numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_id,      numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefectures_id,   numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipping_days_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :name,             presence: true
  validates :price,            presence: true
  validates :explanation,      presence: true
end
