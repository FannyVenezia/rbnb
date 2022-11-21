class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :mass
      t.string :area
      t.string :solar_system
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
