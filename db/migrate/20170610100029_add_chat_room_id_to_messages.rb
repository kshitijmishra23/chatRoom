class AddChatRoomIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :chatroom_id, :int
  end
end
