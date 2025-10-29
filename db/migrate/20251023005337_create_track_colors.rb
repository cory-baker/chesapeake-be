class CreateTrackColors < ActiveRecord::Migration[8.0]
  def up
    execute <<-SQL
      CREATE TYPE track_color as ENUM ('green', 'yellow', 'brown', 'gray', 'phase')
    SQL
    create_table :track_colors do |t|
      t.column :color, :track_color, null: false
    end
  end

  def down
    drop_table :track_colors
    execute <<-SQL
      DROP TYPE track_color
    SQL
  end
end
