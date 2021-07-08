class CreateSerieData < ActiveRecord::Migration[5.2]
  def change
    create_table :serie_data do |t|
      t.references :tv_serial, foreign_key: true
      t.string :genre
      t.integer :number_of_seasons
      t.datetime :date_of_first_release
      t.string :director
      t.string :actor
      t.string :shoot_location
      t.string :country

      t.timestamps
    end
  end
end
