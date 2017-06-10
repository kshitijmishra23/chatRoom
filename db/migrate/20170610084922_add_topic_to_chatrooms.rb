class AddTopicToChatrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :chatrooms, :topic, :string
    add_index :chatrooms, :topic, unique: true
  end
end
