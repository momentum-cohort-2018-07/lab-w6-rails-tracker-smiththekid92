class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :species
      t.string :planet_origin
      t.string :occupation

      t.timestamps
    end
  end
end
