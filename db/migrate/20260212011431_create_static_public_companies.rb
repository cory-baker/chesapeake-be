class CreateStaticPublicCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :static_public_companies, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.string :name, null: false
      t.integer :stock_price
    end
  end
end
