class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.string :genre
      t.string :language
      t.integer :rating

      t.timestamps
    end
  end
end
