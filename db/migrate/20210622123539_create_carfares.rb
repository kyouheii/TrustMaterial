class CreateCarfares < ActiveRecord::Migration[5.2]
  def change
    create_table :carfares do |t|
      t.date :worked_on
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
