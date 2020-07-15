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

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
