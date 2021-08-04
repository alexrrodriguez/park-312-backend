class AddNameToParkEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :park_events, :name, :string
  end
end
