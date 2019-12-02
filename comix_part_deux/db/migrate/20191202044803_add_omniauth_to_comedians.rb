class AddOmniauthToComedians < ActiveRecord::Migration[6.0]
  def change
    add_column :comedians, :provider, :string
    add_column :comedians, :uid, :string
    add_column :comedians, :name, :string
    add_column :comedians, :image, :text
  end
end
