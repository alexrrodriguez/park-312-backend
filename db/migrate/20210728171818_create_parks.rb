class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :district
      t.string :address
      t.string :facility
      t.boolean :indoor
      t.boolean :outdoor

      t.timestamps
    end
  end
end
