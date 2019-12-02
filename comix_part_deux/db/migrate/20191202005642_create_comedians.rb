class CreateComedians < ActiveRecord::Migration[6.0]
  def change
    create_table :comedians do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
