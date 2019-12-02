class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :type_clean_dirty
      t.timestamps
    end
  end
end
