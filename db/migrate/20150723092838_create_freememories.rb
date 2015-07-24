class CreateFreememories < ActiveRecord::Migration
  def change
    create_table :freememories do |t|
      t.integer :time
      t.string :build
      t.string :vvx300
      t.string :vvx310
      t.string :vvx400
      t.string :vvx410
      t.string :vvx500
      t.string :vvx600
      t.string :vvx1500
      t.string :tinman
      t.string :vvx301
      t.string :vvx401
      t.string :vvx501
      t.string :vvx601
      t.integer :freememory
      t.string :identifier

      t.timestamps null: false
    end
  end
end
