# frozen_string_literal: true

#
# Follows Model
#
class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows, force: :cascade do |t|
      t.integer :user_id
      t.integer :following_id
      t.timestamps
    end
    add_index :follows, [:user_id, :following_id], unique: true
  end
end
