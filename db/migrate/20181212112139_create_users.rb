class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :name
      t.string :email
      t.string :location
      t.string :location_url
      t.text :description
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
