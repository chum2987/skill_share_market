class CreateUserEstimatedAmounts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_estimated_amounts do |t|

      t.timestamps
    end
  end
end
