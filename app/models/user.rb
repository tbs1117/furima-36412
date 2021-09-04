class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :items
  # has_many :buyers
  
  validates :nickname, presence: true
  validates :password,format:{with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}+\z/}
  with_options presence: true, format:{ with: /\A[ぁ-んァ-ン一-龥]+\z/} do
    validates :family_name
    validates :first_name
  end
  with_options presence: true, format:{ with: /\A[ァ-ヶー－]+\z/} do
    validates :family_name_kana
    validates :first_name_kana
  end
  validates :birthday, presence: true
end
