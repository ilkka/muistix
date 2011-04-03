class RenamePlansToLists < ActiveRecord::Migration
  def self.up
    rename_table :plans, :lists
  end

  def self.down
    rename_table :lists, :plans
  end
end
