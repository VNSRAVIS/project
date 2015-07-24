class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.integer :time
      t.string :build
      t.string :platform
      t.string :identifier

      t.timestamps null: false
    end
  end
end
