class CreatePaniers < ActiveRecord::Migration[5.2]
  def change
    create_table :paniers do |t|
      t.text :title
      t.text :ingredients

      t.timestamps
    end
  end
end
