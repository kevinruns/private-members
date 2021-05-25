class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      t.string :location
      t.date :event_on

      t.timestamps
    end
  end
end
