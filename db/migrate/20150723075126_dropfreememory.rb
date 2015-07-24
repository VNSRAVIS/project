class Dropfreememory < ActiveRecord::Migration
  def change
  	  def up
	    drop_table :freememories
	  end

	  def down
	    raise ActiveRecord::IrreversibleMigration
	  end
  end
end
