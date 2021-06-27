class AddStatusToEventAttendings < ActiveRecord::Migration[6.1]
  def change

    add_column :event_attendings, :status, :integer

  end
end
