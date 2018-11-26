class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.string :name
      t.text :description
      t.string :adress

      t.timestamps
    end
  end
end
