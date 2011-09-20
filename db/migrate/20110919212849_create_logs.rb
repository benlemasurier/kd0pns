class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :callsign
      t.string :band
      t.float :frequency
      t.string :mode
      t.string :location

      t.timestamps
    end
  end
end
