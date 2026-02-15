class CreateTileColors < ActiveRecord::Migration[8.0]
  def up
    execute <<-SQL
      CREATE TYPE tile_color as ENUM ('green', 'yellow', 'brown', 'gray', 'phase')
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE tile_color
    SQL
  end
end
