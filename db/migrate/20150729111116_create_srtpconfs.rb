class CreateSrtpconfs < ActiveRecord::Migration
  def change
    create_table :srtpconfs do |t|
      t.bigint :time
      t.string :build
      t.string :platform
      t.integer :srtpconf
      t.string :identifier

      t.timestamps null: false
    end
  end
end
