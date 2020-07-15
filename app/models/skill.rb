class Skill < ApplicationRecord
  belongs_to :saler, class_name: 'User'
  belongs_to :buyer, class_name: 'User'
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  belongs_to :category
  has_many :skill_images, dependent: :destroy
  accepts_nested_attributes_for :skill_images, allow_destroy: true

  validates_associated :skill_images

end
