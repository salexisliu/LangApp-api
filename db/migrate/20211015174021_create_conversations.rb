class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :title
      t.text :description
      t.string :cover_pic
      t.string :language

      t.timestamps
    end
  end
end
