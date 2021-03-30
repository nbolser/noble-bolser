class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests, id: :uuid do |t|
      enable_extension 'pgcrypto'

      t.string :name
      t.string :email
      t.boolean :attending
      t.text :comments
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
