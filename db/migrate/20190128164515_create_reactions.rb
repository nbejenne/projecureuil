class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.text :icon
      t.references :picture, foreign_key: true
      t.references :membership, foreign_key: true

      t.timestamps
    end
  end
end
