class CreateCarfares < ActiveRecord::Migration[5.2]
  def change
    create_table :carfares do |t|
      t.date :worked_on

      t.timestamps
    end
  end
end
