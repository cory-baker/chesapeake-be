class CreatePublicCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :public_companies, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.integer :stations, null: false
      t.integer :percent_to_float, null: false
    end
  end
end
