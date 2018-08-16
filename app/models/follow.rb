class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: 'user_id', class_name: 'User', counter_cache: :follower_relationships_count
  belongs_to :following, foreign_key: 'following_id', class_name: 'User', counter_cache: :following_relationships_count
end
