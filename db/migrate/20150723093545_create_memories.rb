class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.bigint :time
      t.string :build
      t.string :platform
      t.bigint :memory
      t.string :identifier

      t.timestamps null: false
    end
  end
end
