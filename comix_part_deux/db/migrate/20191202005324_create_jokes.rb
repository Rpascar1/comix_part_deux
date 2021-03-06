class CreateJokes < ActiveRecord::Migration[6.0]
  def change
    create_table :jokes do |t|
      t.string :topic
      t.string :punchline
      t.string :body
      t.references :comedian, index: true, foreign_key: true
      t.timestamps
    end
  end
end
