class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :follower_relationships_count, default: 0
      t.integer :following_relationships_count, default: 0
      t.timestamps
    end
  end
end
