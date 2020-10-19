class User < ApplicationRecord
  has_many :skills 
  has_many :favirites, dependent: :destroy
  has_one :card 
  has_one :address
  has_many :bought_skills, foreign_key: 'buyer_id', class_name: 'Skill'
  has_many :saling_skills,  ->{where("buyer_id is NULL")},foreign_key: 'saler_id', class_name: 'Skill'
  has_many :sold_skills, ->{where("buyer_id is not NULL")}, foreign_key: 'saler_id', class_name: 'Skill'
  has_many :user_award
  has_many :user_career
  has_many :user_estimated_amount
  has_many :user_speciality
  has_many :user_portfolio
  
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :email,     format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :nickname,  uniqueness: true ,length: { in: 3..20 }, uniqueness: true, presence: true
  validates :password,  format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,128}/}, length: { in: 6..20 },  presence: true
  validates :birthday,  presence: true
  validates :gender,    presence: true

end
