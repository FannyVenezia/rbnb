class AddPlanetIdToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :planet, null: false, foreign_key: true
  end
end
