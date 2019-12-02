class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :topic
      t.string :punchline
      t.string :body
      t.string :notes
      t.boolean :hit 
      t.timestamps
    end
  end
end
