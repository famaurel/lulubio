class CreateAteliers < ActiveRecord::Migration[5.2]
  def change
    create_table :ateliers do |t|
      t.string :name
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
