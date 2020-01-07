class CreatePaniers < ActiveRecord::Migration[5.2]
  def change
    create_table :paniers do |t|
      t.string :ingr1
      t.string :ingr2
      t.string :ingr3
      t.string :ingr4
      t.string :ingr5
      t.string :ingr6
      t.string :ingr7

      t.timestamps
    end
  end
end
