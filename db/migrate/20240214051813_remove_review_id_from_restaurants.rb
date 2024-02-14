class RemoveReviewIdFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :review_id
  end
end
