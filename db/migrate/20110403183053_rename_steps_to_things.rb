class RenameStepsToThings < ActiveRecord::Migration
  def self.up
    rename_table :steps, :things
    rename_column :things, :objective, :description
  end

  def self.down
    rename_column :things, :description, :objective
    rename_table :things, :steps
  end
end
