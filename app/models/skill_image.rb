class SkillImage < ApplicationRecord
  belongs_to : skill, optinal: true
  mount_uploader :image, ImageUploader

end
