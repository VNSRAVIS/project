class CreateStaticAnalyses < ActiveRecord::Migration
  def change
    create_table :static_analyses do |t|
      t.integer :svnversion
      t.integer :time
      t.integer :total
      t.integer :critical
      t.integer :error
      t.integer :warning

      t.timestamps null: false
    end
  end
end
