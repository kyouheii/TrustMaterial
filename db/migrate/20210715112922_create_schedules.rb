class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.date :worked_on
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
