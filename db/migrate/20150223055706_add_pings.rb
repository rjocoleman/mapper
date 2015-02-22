class AddPings < ActiveRecord::Migration
  def change

    create_table :pings do |t|
      t.string :token
      t.string :dateTime
      t.string :latitude
      t.string :longitude
      t.string :speed
      t.string :course
      t.string :altitude
      t.string :hdop
      t.string :vdop
      t.string :pdop
      t.string :satellitesUsed
      t.string :GSAModeTwo
      t.string :batteryPercent
      t.string :batteryVoltage
      t.string :rssi

      t.timestamps null: false
    end

  end
end
