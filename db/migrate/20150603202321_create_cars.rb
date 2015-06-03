class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars, id: false do |t|
      t.uuid :id, primary_key: true
      t.uuid :user_id
      t.string :make
      t.timestamps null: false
    end
  end
end
