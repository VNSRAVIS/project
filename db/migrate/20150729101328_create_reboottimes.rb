class CreateReboottimes < ActiveRecord::Migration
  def change
    create_table :reboottimes do |t|
      t.bigint :time
      t.string :build
      t.string :platform
      t.integer :reboot
      t.string :identifier
      t.timestamps null: false
    end
  end
end
