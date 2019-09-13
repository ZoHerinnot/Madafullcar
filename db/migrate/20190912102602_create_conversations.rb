class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.timestamps
    end
  end
end
