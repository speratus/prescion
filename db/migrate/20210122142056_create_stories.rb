class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.datetime :publication_date
      t.string :slug
      t.integer :unique_id
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
