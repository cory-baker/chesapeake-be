class CreateStaticTrains < ActiveRecord::Migration[8.0]
  def change
    create_table :static_trains, id: false do |t|
       t.string :id, null: false, primary_key: true
       t.integer :cost, null: false
       t.integer :quantity, null: false
       t.integer :rusts
       t.integer :upgrade_cost, null: false
       t.integer :stops, null: false
    end
  end
end
