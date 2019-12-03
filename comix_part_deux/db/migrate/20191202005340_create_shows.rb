class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :tickets
      t.references :club, index: true, foreign_key: true
      t.references :comedian, index: true, foreign_key: true
      t.timestamps
    end
  end
end
