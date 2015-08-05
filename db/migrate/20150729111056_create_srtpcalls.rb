class CreateSrtpcalls < ActiveRecord::Migration
  def change
    create_table :srtpcalls do |t|
      t.bigint :time
      t.string :build
      t.string :platform
      t.integer :srtpcall
      t.string :identifier

      t.timestamps null: false
    end
  end
end
