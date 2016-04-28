class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :cover_image
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
