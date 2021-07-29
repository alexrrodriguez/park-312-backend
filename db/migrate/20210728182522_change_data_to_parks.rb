class ChangeDataToParks < ActiveRecord::Migration[6.1]
  def change
    change_column :parks, :indoor, :string
  end
end
