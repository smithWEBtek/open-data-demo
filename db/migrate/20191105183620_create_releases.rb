class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
