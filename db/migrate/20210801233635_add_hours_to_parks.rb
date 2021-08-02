class AddHoursToParks < ActiveRecord::Migration[6.1]
  def change
    add_column :parks, :hours, :string
  end
end
