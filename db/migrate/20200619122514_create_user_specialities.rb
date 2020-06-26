class CreateUserSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_specialities do |t|

      t.string :name, null: false
      t.timestamps
    end
  end
end
