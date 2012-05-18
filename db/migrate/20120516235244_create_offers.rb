class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :postal
      t.date :date
      t.integer :user_id
      t.boolean :default, :default => false
      t.timestamps
    end
  end
end
