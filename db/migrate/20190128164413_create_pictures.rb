class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :picture_url
      t.references :album, foreign_key: true
      t.references :membership, foreign_key: true

      t.timestamps
    end
  end
end
