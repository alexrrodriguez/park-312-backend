class AddEventNameToParkEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :park_events, :event_name, :string
  end
end
