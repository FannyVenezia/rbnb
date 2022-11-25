class FixNameReview < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :name, :title
  end
end
