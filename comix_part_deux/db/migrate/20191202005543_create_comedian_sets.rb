class CreateComedianSets < ActiveRecord::Migration[6.0]
  def change
    create_table :comedian_sets do |t|
      t.string :name
      t.string :length
      t.boolean :hit
      t.timestamps
    end
  end
end
