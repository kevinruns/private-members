class AddCreatorToEvents < ActiveRecord::Migration[6.1]
  def change

    add_reference :events, :event_creator, references: :users, index: true
    add_foreign_key :events, :users, column: :event_creator_id

  end
end
