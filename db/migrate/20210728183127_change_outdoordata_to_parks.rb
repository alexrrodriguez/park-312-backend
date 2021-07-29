class ChangeOutdoordataToParks < ActiveRecord::Migration[6.1]
  def change
    change_column :parks, :outdoor, :string
  end
end
