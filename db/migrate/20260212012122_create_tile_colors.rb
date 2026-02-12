class CreateTileColors < ActiveRecord::Migration[8.0]
  def up
    execute <<-SQL
      CREATE TYPE tile_color as ENUM ('green', 'yellow', 'brown', 'gray', 'phase')
    SQL
    create_table :tile_colors do |t|
      t.column :color, :tile_color, null: false
    end
  end

  def down
    drop_table :tile_colors
    execute <<-SQL
      DROP TYPE tile_color
    SQL
  end
end
