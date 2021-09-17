class DonationAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefectures, :city, :house_number, :building_name, :telephone_number, :buyer
end