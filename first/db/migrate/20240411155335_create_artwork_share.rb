class CreateArtworkShare < ActiveRecord::Migration[7.1]
  def change
    create_table :artwork_shares do |t|
      t.references :artwork, null: false, foreign_key: { to_table: :artworks }
      t.references :viewer, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
  end
end
