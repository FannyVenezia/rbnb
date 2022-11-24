class AddDescriptionPriceToPlanet < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :description, :text
    add_column :planets, :price, :string
  end
end
