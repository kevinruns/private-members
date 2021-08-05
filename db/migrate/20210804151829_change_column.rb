class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :id, :int, null: false, unique: true, auto_increment: true,  primary_key: true
  end
end
