class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string     :car_name, null: false
      t.text       :text,     null: false
      t.references :user,     foreign_key: true
      t.timestamps
    end
  end
end
