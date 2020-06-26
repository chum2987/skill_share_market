class CreateUserSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_specialities do |t|

      t.timestamps
    end
  end
end
