class CreateStaticAnalyses < ActiveRecord::Migration
  def change
    create_table :static_analyses do |t|
      t.integer :svnversion
      t.bigint  :time
      t.integer :total
      t.integer :critical
      t.integer :error
      t.integer :warning
      t.string  :build
      t.string  :identifier
      t.string :platform
      t.timestamps null: false
    end
  end
end
