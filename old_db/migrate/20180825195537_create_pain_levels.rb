class CreatePainLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :pain_levels do |t|
      t.integer :pain_level

      t.timestamps
    end
  end
end
