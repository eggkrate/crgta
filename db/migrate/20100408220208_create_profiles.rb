class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :contact
      t.string :email
      t.string :industry
      t.text :services
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :county
      t.integer :phone
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
