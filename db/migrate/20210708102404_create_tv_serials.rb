class CreateTvSerials < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_serials do |t|
      t.string :name
      
      t.timestamps
    end
  end
end
