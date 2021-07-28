class CreateParkEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :park_events do |t|
      t.integer :user_id
      t.integer :park_id
      t.string :facility
      t.string :date
      t.string :time
      t.string :attending

      t.timestamps
    end
  end
end
