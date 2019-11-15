class FixTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model 
      t.integer :year
      t.integer :miles
      t.string :color
      t.integer :price
    end

    create_table :drivers do |t|
      t.string :name 
      t.integer :age
      t.integer :yrs_drive
      t.integer :accident
    end

    create_table :transactions do |t|
      t.integer :paid
      t.integer :driver_id
      t.integer :car_id
      t.timestamp
    end

  end
end
