class CreateSkillImages < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_images do |t|

      t.timestamps
    end
  end
end
