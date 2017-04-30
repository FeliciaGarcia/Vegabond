class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :title
      t.text :description
      t.string :photo_url
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
