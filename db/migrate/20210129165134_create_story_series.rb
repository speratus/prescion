class CreateStorySeries < ActiveRecord::Migration[6.1]
  def change
    create_table :story_series do |t|
      t.belongs_to :story, null: false, foreign_key: true
      t.belongs_to :series, null: false, foreign_key: true

      t.timestamps
    end
  end
end
