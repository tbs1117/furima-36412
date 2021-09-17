class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefectures_id, :city, :house_number, :building_name, :telephone_number, :user_id, :item_id, :token


  with_options presence: true do
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city
    validates :house_number
    validates :telephone_number, format: {with: /\A\d{10,11}\z/, message: "is invalid. Include not hyphen(-)"}
    validates :token
    validates :user_id
    validates :item_id
  end
  validates :prefectures_id, numericality: {other_than: 1, message: "can't be blank"}

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, prefectures_id: prefectures_id, city: city, house_number: house_number, building_name: building_name, telephone_number: telephone_number, order_id: order.id)
  end
end